
//using OfficeAutomationServiceClient.LetterServiceProxy;
//using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;

namespace ConsoleApplicationTest
{
    class Program 
    {
        static void Main(string[] args)
        {
            HrService.PRSClient prsClient = new HrService.PRSClient();
            var pm = prsClient.getEmployeeSpec(417386, "13", "epm2", "E123456");
            
        }
          //  test t =new test();
     
        
            //com_gam_secretariat_webservice_complextypes_SecurityContextWTO SecurityContextWTOPerson = new com_gam_secretariat_webservice_complextypes_SecurityContextWTO();
           
            //SecurityContextWTOPerson.systemName = "Simapws";
            //SecurityContextWTOPerson.systemPass = "Simap@1398";

            //com_gam_secretariat_webservice_complextypes_LetterWTO LetterWTO = new com_gam_secretariat_webservice_complextypes_LetterWTO();
            //LetterWTO.letAccessType = "1";
            //LetterWTO.letComment = "test letComment";
            ////LetterWTO.letDocTypeId = 5;
            //ListProviderServicePortTypeClient ListProviderClient=new ListProviderServicePortTypeClient();
            //OfficeAutomationServiceClient.ListProviderServiceProxy.com_gam_secretariat_webservice_complextypes_ListProviderWTO param1 = new OfficeAutomationServiceClient.ListProviderServiceProxy.com_gam_secretariat_webservice_complextypes_ListProviderWTO();
            //  OfficeAutomationServiceClient.ListProviderServiceProxy.com_gam_secretariat_webservice_complextypes_ListResultWTO[] actual = ListProviderClient.getDocumentTypes(SecurityContextWTOListProvider, param1);
            //LetterWTO.letDocTypeId = SecurityContextWTOPerson.depId
            //LetterWTO.letPriorityId = this.GetPriorityId();
            //LetterWTO.letTransfer = TransferType;
            //LetterWTO.letRegistrarDepId = this.GetPersonDepartmentsID();
            //LetterWTO.receivers = this.GetLetterReceivers();
            //var letterID = LetterServiceClient.insertLetter(SecurityContextWTOLetterService, param1);

            //WebClient client = new WebClient();
            //client.Encoding = Encoding.UTF8;
            //client.Credentials = new NetworkCredential("symap", "Test@1234");
            //string str = client.UploadString("http://172.26.97.102/api/getservices", "");
            
            //JObject j = JObject.Parse(str);
            //js.Deserialize()
            //ServiceReference1.ServiceClient srv = new ServiceReference1.ServiceClient();
            //srv.ClientCredentials.UserName.UserName = "hq\\epm";
            //srv.ClientCredentials.UserName.Password = "Pass!@#qwerty";
            //ServiceReference1.CallbackMessage m = srv.SetStatus(new ServiceReference1.ProposalStatus());
           
        
        
    }
}
