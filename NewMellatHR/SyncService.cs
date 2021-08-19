using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Timers;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;
using System.Threading.Tasks;

namespace NewMellatHR
{
    partial class SyncService : ServiceBase
    {
        HttpClient client;
        string authToken;
        string ServiceName;
        int ModeCode = 13;
        public SyncService()
        {
            InitializeComponent();
        }
        protected override void OnStart(string[] args)
        {
                Update();
        }


        public void Update()
        {
            HrService.PRSClient prsClient = new HrService.PRSClient();

            ProjectServer_Reporting_faEntities entities = new ProjectServer_Reporting_faEntities();
            var data = from emp in entities.MSP_EpmResource_UserView where emp.کد_پرسنلی != null select emp.کد_پرسنلی;
            foreach (var empCode in data)
            {
                int empId = 0;
                if (!int.TryParse(empCode.Trim(), out empId))
                    continue;
                try
                {   

                    var pm = prsClient.getEmployeeSpec(empId, "13", "epm2", "E123456");
                    if (pm.PersonCode == null)
                        continue;
                    var hrEmployee = (from hrEmp in entities.HrEmployeeDetails where hrEmp.EmployeeCode == empId select hrEmp).FirstOrDefault();
                    if (hrEmployee == null)
                    {
                        
                        hrEmployee = new HrEmployeeDetail
                        {
                            EmployeeCode = empId,
                            FirstName = pm.FName,
                            LastName = pm.LName,
                            Status = pm.PrsVazKhedmatName,
                            StatusCode = pm.PrsVazKhedmaTCode,
                            Department = pm.DepTitle,
                            DepartmentCode = (int)(pm.DPCode ?? 0),
                            Unit = pm.UnitName,
                            UnitCode = (int)(pm.UnitCode ?? 0)


                        };
                        entities.HrEmployeeDetails.Add(hrEmployee);

                    }
                    else
                    {
                        hrEmployee.FirstName = pm.FName;
                        hrEmployee.LastName = pm.LName;
                        hrEmployee.Status = pm.PrsVazKhedmatName;
                        hrEmployee.StatusCode = pm.PrsVazKhedmaTCode;
                        hrEmployee.Department = pm.DepTitle;
                        hrEmployee.DepartmentCode = (int)(pm.DPCode ?? 0);
                        hrEmployee.Unit = pm.UnitName;
                        hrEmployee.UnitCode = (int)(pm.UnitCode ?? 0);
                    }
                    entities.SaveChanges();

                }
                catch (Exception ex)
                {
                    File.AppendAllText(@"D:\Projects\Log.txt", ex.ToString() + "\n---------------------------------\n");
                }

            }


        }

        private async void HttpClientInit(string baseUri, string userName, string passwd)
        {
            client = new HttpClient();
            client.BaseAddress = new Uri(baseUri);
            client.DefaultRequestHeaders.Accept.Clear();
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
            client.Timeout = new TimeSpan(0,10, 0);

            authToken = null;
            var response = await client.GetAsync(String.Format("api/User/Login?userName={0}&passwd={1}", userName, passwd));
            if (response.IsSuccessStatusCode)
            {
                string resultJSON = await response.Content.ReadAsStringAsync();
                authToken = (string)JsonConvert.DeserializeObject(resultJSON, authToken.GetType());
            }
        }

        private async Task<NewMellatHR.HrService.empSpecData> GetPersonelInfo(string paramsJSON)
        {
              if (!string.IsNullOrEmpty(authToken))
                {                      
                         
                        var response = await client.GetAsync(String.Format("api/RhbnDataPublish/Call?serviceName={0}&authToken={1}&paramsJSON={2}&modeCode={3}",
                                        ServiceName, authToken, paramsJSON, ModeCode));
                        if (response.IsSuccessStatusCode)
                        {
                            string resultJSON = await response.Content.ReadAsStringAsync();
                            var result = new NewMellatHR.HrService.empSpecData();
                            if (!string.IsNullOrEmpty(resultJSON))
                            {
                                return (NewMellatHR.HrService.empSpecData)JsonConvert.DeserializeObject(resultJSON, result.GetType());
                            }
                            else
                            {
                                File.AppendAllText(@"D:\Projects\Log.txt", string.Format("response=>resultJSON : Empty") + "\n---------------------------------\n");
                            }
                        }
                        else
                        {
                            File.AppendAllText(@"D:\Projects\Log.txt", string.Format("response=>IsSuccessStatusCode : {0}", response.IsSuccessStatusCode) + "\n---------------------------------\n");
                        }                   
                }
                else
                {
                    File.AppendAllText(@"D:\Projects\Log.txt", string.Format("Token=>Empty") + "\n---------------------------------\n");
                }           
        }


        protected override void OnStop()
        {
            // TODO: Add code here to perform any tear-down necessary to stop your service.
        }
    }
}
