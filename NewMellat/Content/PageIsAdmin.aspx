<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageIsAdmin.aspx.cs" Inherits="NewMellat.Content.PageIsAdmin" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center" style="padding: 9px">
    
        <dx:ASPxCheckBox ID="ASPxCheckBox1" runat="server" RightToLeft="True" Text="مدیر سیستم" Theme="SoftOrange">
        </dx:ASPxCheckBox>
    
    </div>
        <div align="center" style="padding: 9px">
            <dx:ASPxButton ID="ASPxButton1" runat="server" OnClick="ASPxButton1_Click" Text="ثبت تغییرات" Theme="SoftOrange">
            </dx:ASPxButton>
        </div>
        <div align="center" style="font-family: tahoma; font-size: 13px">
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
    </form>
</body>
</html>
