<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PageSooratPardakht2.aspx.cs" Inherits="NewMellat.Content.PageSooratPardakht2" %>
<%@ Register assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <dx:ASPxGridView runat="server" RightToLeft="True" AutoGenerateColumns="False" Theme="SoftOrange" Width="100%" EnableTheming="True" ID="ASPxGridView1"><Columns>
<dx:GridViewCommandColumn ShowNewButtonInHeader="True" ShowInCustomizationForm="True" VisibleIndex="0"></dx:GridViewCommandColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="شماره قرارداد" VisibleIndex="2"></dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="تحویلی" VisibleIndex="3"></dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" VisibleIndex="4" Caption="شماره صورتحساب"></dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="مبلغ" VisibleIndex="5">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="نام پروژه" VisibleIndex="1">
        </dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn Caption="شرکت" VisibleIndex="6"></dx:GridViewDataTextColumn>
<dx:GridViewDataTextColumn ShowInCustomizationForm="True" Caption="ناظر1" VisibleIndex="7"></dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="ناظر2" VisibleIndex="8">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="شناسه نامه عودت" VisibleIndex="9">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="تاریخ نامه عودت" VisibleIndex="10">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="استعلام و پاسخ به مالی" VisibleIndex="11">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="ارسال به شرکت و پاسخ به مالی" VisibleIndex="12">
        </dx:GridViewDataTextColumn>
        <dx:GridViewDataTextColumn Caption="پاسخ به مالی" VisibleIndex="13">
        </dx:GridViewDataTextColumn>
</Columns>

<Styles>
<Header HorizontalAlign="Center" Font-Names="B Yekan" Font-Size="13px"></Header>
</Styles>
</dx:ASPxGridView>

                </div>
</asp:Content>
