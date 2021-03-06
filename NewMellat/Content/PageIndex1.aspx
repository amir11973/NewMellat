<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageIndex1.aspx.cs" Inherits="NewMellat.Content.PageIndex1" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link href="site.css" rel="stylesheet" type="text/css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <table align="center" cellpadding="0" cellspacing="0">
            <tr>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtVahed" runat="server" Theme="SoftOrange" Width="200px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label1" runat="server" Text=":نام واحد درخواست کننده"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtTell" runat="server" Theme="SoftOrange" Width="200px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label3" runat="server" Text=":شماره تماس"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtName" runat="server" Theme="SoftOrange" Width="200px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label2" runat="server" Text=":نام و نام خانوادگی شخص مسئول"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
        <div align="center">
            <table align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtProjectTitle" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtProjectMahdodeh" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtProjectHadaf" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtProjectTeam" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtProjectVahed" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtZinaf" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtBaze" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtKholase" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="txtHazineFaydeh" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="540px">
                    </dx:ASPxMemo>
                    </td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td width="550" align="right" style="padding-top: 2px; padding-bottom: 2px; direction: ltr;">
                        &nbsp;</td>
                    <td class="RightColumn">
                        &nbsp;</td>
                </tr>
            </table>
        </div>

           <div align="center" style="padding: 5px">
            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ثبت اطلاعات" Theme="SoftOrange" Width="150px" OnClick="ASPxButton1_Click">
            </dx:ASPxButton>
               <asp:SqlDataSource ID="soureInfo" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" InsertCommand="INSERT INTO tbIndex1(inVahedName, inName, inTell, inTitle, inMahdodeh, inHadaf, inTeam, inVaheds, inZinaf, inBAzeh, inFeatures, inTahlil, inFile, inAct, inRegisterDate, inProject) VALUES (@inVahedName, @inName, @inTell, @inTitle, @inMahdodeh, @inHadaf, @inTeam, @inVaheds, @inZinaf, @inBAzeh, @inFeatures, @inTahlil, @inFile, 1, GETDATE(), @inProject)" SelectCommand="SELECT TOP (1) inVahedName FROM tbIndex1">
                   <InsertParameters>
                       <asp:ControlParameter ControlID="txtVahed" Name="inVahedName" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtName" Name="inName" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtTell" Name="inTell" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtProjectTitle" Name="inTitle" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtProjectMahdodeh" Name="inMahdodeh" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtProjectHadaf" Name="inHadaf" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtProjectTeam" Name="inTeam" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtProjectVahed" Name="inVaheds" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtZinaf" Name="inZinaf" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtBaze" Name="inBAzeh" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtKholase" Name="inFeatures" PropertyName="Text" />
                       <asp:ControlParameter ControlID="txtHazineFaydeh" Name="inTahlil" PropertyName="Text" />
                       <asp:ControlParameter ControlID="FileUpload1" Name="inFile" PropertyName="FileBytes" />
                       <asp:QueryStringParameter Name="inProject" QueryStringField="project" />
                   </InsertParameters>
               </asp:SqlDataSource>
        </div>

    </form>
</body>
</html>
