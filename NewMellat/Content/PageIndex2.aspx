<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageIndex2.aspx.cs" Inherits="NewMellat.Content.PageIndex2" %>

<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


.LeftColumn {
    font-family: "b yekan";
    font-size: 14px;
    color: #444444;
    text-decoration: none;
    font-style: normal;
    vertical-align: middle;
    text-align: right;
    padding-left: 2px;
    width: 200px;
    height: 35px;
}

.RightColumn {
    font-family: "b yekan";
    font-size: 16px;
    color: #444444;
    text-decoration: none;
    font-style: normal;
    vertical-align: middle;
    text-align: left;
    padding-left: 2px;
    width: 150px;
    height: 35px;
}



    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
    <div style="height: 200px" id="dv1" runat="server">


        <table align="right" cellpadding="0" cellspacing="0">
            <tr>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtShenase6" runat="server" Theme="SoftOrange" Width="250px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label22" runat="server" Text=":نام واحد درخواست کننده"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtShenase8" runat="server" Theme="SoftOrange" Width="250px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label24" runat="server" Text=":شماره تماس"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtShenase7" runat="server" Theme="SoftOrange" Width="250px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label23" runat="server" Text=":نام و نام خانوادگی شخص مسئول"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
            </tr>
            <tr>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtShenase10" runat="server" Theme="SoftOrange" Width="250px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label26" runat="server" Text=":اولویت"></asp:Label>
                </td>
                <td class="LeftColumn">
                    <dx:ASPxTextBox ID="txtShenase9" runat="server" Theme="SoftOrange" Width="250px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label25" runat="server" Text=":نام پروژه"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="LeftColumn">&nbsp;</td>
                <td class="RightColumn">&nbsp;</td>
                <td class="LeftColumn">
                    <dx:ASPxRadioButtonList ID="ASPxRadioButtonList1" runat="server" EnableTheming="True" RepeatDirection="Horizontal" RightToLeft="True" Theme="SoftOrange">
                        <Items>
                            <dx:ListEditItem Text="بهبود" Value="بهبود" />
                            <dx:ListEditItem Text="رفع نقص" Value="رفع نقص" />
                        </Items>
                    </dx:ASPxRadioButtonList>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label27" runat="server" Text=":نوع درخواست"></asp:Label>
                </td>
            </tr>
        </table>


    </div>

    </div>
        <div align="center">

    <div style="height: 300px" align="right" id="dv2" runat="server">
        <table align="right" cellpadding="0" cellspacing="0">
            <tr>
                <td align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="ASPxMemo1" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="600px">
                    </dx:ASPxMemo>
                </td>
                <td class="RightColumn">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="ASPxMemo2" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="600px">
                    </dx:ASPxMemo>
                </td>
                <td class="RightColumn">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="ASPxMemo3" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="600px">
                    </dx:ASPxMemo>
                </td>
                <td class="RightColumn">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxMemo ID="ASPxMemo4" runat="server" Height="41px" RightToLeft="True" Theme="SoftOrange" Width="600px">
                    </dx:ASPxMemo>
                </td>
                <td class="RightColumn">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 2px; padding-bottom: 2px">
                    <dx:ASPxTextBox ID="txtShenase11" runat="server" Theme="SoftOrange" Width="250px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" style="padding-top: 2px; padding-bottom: 2px" class="dxcpCurrentColor">
                    <dx:ASPxTextBox ID="txtShenase12" runat="server" Theme="SoftOrange" Width="250px" TabIndex="7" Height="25px">
                    </dx:ASPxTextBox>
                </td>
                <td class="RightColumn">
                    &nbsp;</td>
            </tr>
        </table>
    </div>


        </div>
           <div align="center" style="padding: 5px">
            <dx:ASPxButton ID="ASPxButton1" runat="server" Text="ثبت اطلاعات" Theme="SoftOrange" Width="150px">
            </dx:ASPxButton>
        </div>
    </form>
</body>
</html>
