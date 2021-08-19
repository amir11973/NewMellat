using DataAccessLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewMellat.Content
{
    public partial class HN_newProject : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Page.User.Identity.Name;
            // کنترل امنیت
            if (!SecurityClass.IsValid(Page.User.Identity.Name, "pagenewproject.aspx"))//Path.GetFileName(Request.Url.AbsolutePath)))
            {
                 Response.Redirect(@"~\content\PageDenied.aspx");
            }


            Label panel = (Label)this.Master.FindControl("lbHeader");
            panel.Text = "ثبت درخواست جدید";
           
            vahedDS.SelectParameters["prCode"].DefaultValue = userName;
            // sourceVahed2.SelectParameters["prCode"].DefaultValue = Page.User.Identity.Name;
            peymankarDS.SelectParameters["prCode"].DefaultValue = userName;
            HF_CurrentUser.Value = userName;
           
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            NewMellatEntities db = new NewMellatEntities();

            DataAccessBase da = new DataAccessBase();
            string rStart=riskStart.Text==""?"null":"'"+riskStart.Text+"'";
            string rEnd = riskEnd.Text == "" ? "null" : "'" + riskEnd.Text + "'";
            string CommitteeLetterDate = letterDate1.Text == "" ? "null" : "'" + letterDate1.Text + "'";

            int insertedId =Convert.ToInt32( da.ScalarTxt(@"INSERT INTO tbProjects (prTitle, prAct, prRegDate, prRegUser, prVahed, prProjectType, prSanadType, prOlaviat, prPeymankar, prStatus, prMainBody,
              TechnicalSuvisor,ServiceId,riskAgainst,riskTitle,riskStart,riskEnd,riskDesc, 
              prReqType,prevContractNo,CommitteeLetterNo,CommitteeLetterDate, 
projectTeam,ApprovedDoc,prGoal,prDetails,prBenefit,prProjectStatus,prApprove,prRequire)
 
VALUES (N'" + prTitle.Text + "',1,'" + DateTime.Now + "','" + Page.User.Identity.Name + "'," + vahed.SelectedValue + "," + prType.SelectedValue + "," + sanadType.SelectedValue + "," + olaviat.SelectedValue + "," + peymankar.SelectedValue + ",0,N'" + prDetail.Text + "'," + nazer.SelectedValue + ",N'" + ServiceCatalog.SelectedValue + "'," + haveRisk.SelectedValue + ",N'" + riskTitle.Text + "'," + rStart + "," + rEnd + ",N'" + riskDesc.Text + "'," + reqType.SelectedValue + ",N'" + prevContractNo.Text + "',N'" + letterShenase1.Text + "'," + CommitteeLetterDate + ",N'" + hfTeam.Value + "',N'" + hfDoc.Value + "',N'" + prGoal.Text + "',N'" + hfDetails.Value + "',N'" + hfBenefit.Value + "',N'در حال اجرا',N'" + hf_app.Value + "',N'" + prRequire.Text + "');SELECT SCOPE_IDENTITY();"));

            // update Item set finalCode
            var item = db.tbProjects.SingleOrDefault(n => n.prId == insertedId);
            item.prFinalCode = item.prPeymankar.ToString().PadLeft(3, '0') +
                  item.prVahed.ToString().PadLeft(3, '0') +
                  item.prProjectType.ToString().PadLeft(3, '0') +
                  item.prSanadType.ToString().PadLeft(3, '0') +
                  item.prId.ToString().PadLeft(4, '0');
            if (item.TechnicalSuvisor == -1)
                item.TechnicalSuvisor = null;
            db.SaveChanges();
            //add file

            foreach (Telerik.Web.UI.UploadedFile file in RadUpload1.UploadedFiles)
            {

                tbFile newFile = new tbFile();
                newFile.fiAct = 1;

                byte[] fileData = new byte[file.InputStream.Length];
                file.InputStream.Read(fileData, 0, (int)file.InputStream.Length);
                newFile.fiData = fileData;
                newFile.fiDate = DateTime.Now;
                newFile.fiExt = Path.GetFileName(file.FileName);
                newFile.fiParent = insertedId;
                newFile.fiTitle = prTitle.Text;
                newFile.fiType = 1;
                db.tbFiles.Add(newFile);
                db.SaveChanges();
            }
            //add letter
            var secondLetter = "";
            if(letterShenase1.Text!="")
            {
                secondLetter = @",('" + letterShenase1.Text + "','','" + letterDate1.Text + "'," + insertedId + ",1,11)";
            }
            da.NonQueryTxt(@"INSERT INTO [dbo].[tbProjectPaper] ([paShenase],[paNumber],[paDate],[paProject],[paAct],[paType])
                VALUES ('" + letterShenase.Text + "','" + letterNo.Text + "','" + letterDate.Text + "'," + insertedId + ",1,1)"+secondLetter);

            Response.Write("<script>alert('درخواست با موفقیت ثبت شد . ')</script>");
            Response.Redirect("http://172.22.65.16:1983/content/PageProjectList.aspx");
        }
    }
}