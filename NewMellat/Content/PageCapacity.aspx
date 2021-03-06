<%@ page title="" language="C#" masterpagefile="~/Site2.Master" autoeventwireup="true" codebehind="PageCapacity.aspx.cs" inherits="NewMellat.Content.PageCapacity" %>

<%@ register tagprefix="dx" namespace="DevExpress.Web" assembly="DevExpress.Web.v16.2, Version=16.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="box box-danger" style="height: 170px; padding-top: 9px; top: 0px; right: 0px;">
         <table>
             <tr>
                 <td>

         <table align="right" cellpadding="0" cellspacing="0" dir="ltr" >
             <tr>
                 <td align="right" class="LeftColumn">
                    <dx:ASPxComboBox ID="ASPxComboBoxCompany" runat="server" AnimationType="Fade" DataSourceID="sourceUsers" EnableTheming="True" AutoPostBack="True" RightToLeft="True"  TextField="infTitle" Theme="SoftOrange" ValueField="infId" OnDataBound="ASPxComboBoxCompany_DataBound" OnSelectedIndexChanged="ASPxComboBoxCompany_SelectedIndexChanged"
                         >
                    </dx:ASPxComboBox>
                    <asp:SqlDataSource ID="sourceUsers" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>" SelectCommand="select * from prInformation where  infType = 5"></asp:SqlDataSource>
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label10" runat="server" Text=":نام شرکت"></asp:Label>
                </td>
             </tr>
             <tr>
                 <td align="right" class="LeftColumn">
                    <dx:ASPxComboBox ID="ASPxComboBoxYear" runat="server" AnimationType="Fade"  EnableTheming="True" RightToLeft="True"  Theme="SoftOrange" AutoPostBack="True" OnSelectedIndexChanged="ASPxComboBoxYear_SelectedIndexChanged" OnDataBound="ASPxComboBoxYear_DataBound" >
                    </dx:ASPxComboBox>
                    
                </td>
                <td class="RightColumn">
                    <asp:Label ID="Label1" runat="server" Text=":سال"></asp:Label>
                </td>
             </tr>
             <tr>
                 <td colspan="2" class="RightColumn">
                    <table style="width:100%;  direction:rtl">
                        <tr>
                            <td>سال</td>
                            <td>سپرده </td>

                            <td>تسهیلات</td>
                          
                            <td>خدمات غیر حضوری</td>
                            <td>کارت، حسابداری و گزارشات</td>
                        </tr>
                        <tr>
                            <td>بهار</td>
                            <td><asp:TextBox ID="TextBoxBaharSeporde" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxBaharTashilat" runat="server"></asp:TextBox></td>
                            
                            <td><asp:TextBox ID="TextBoxBaharInterneti" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxBaharGozareshat" runat="server"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td>تابستان</td>
                            <td><asp:TextBox ID="TextBoxTabestanSeporde" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxTabestanTashilat" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxTabestanInterneti" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxTabestanGozareshat" runat="server"></asp:TextBox></td>

                        </tr>
                        <tr>
                            <td>پاییز</td>
                            <td><asp:TextBox ID="TextBoxPaeezSeporde" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxPaeezTashilat" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxPaeezInterneti" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxPaeezGozareshat" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>زمستان</td>
                            <td><asp:TextBox ID="TextBoxZemestanSeporde" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxZemestanTashilat" runat="server"></asp:TextBox></td>
                           <td><asp:TextBox ID="TextBoxZemestanInterneti" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="TextBoxZemestanGozareshat" runat="server"></asp:TextBox></td>
                        </tr>
                    </table>
                 </td>
              </tr>
         </table>
         
                 </td>
                 <td>&nbsp;&nbsp;&nbsp;</td>
                 <td>
                     <br />
                     <br />
                     <br />
                     <asp:TextBox ID="TextBoxNote" runat="server" TextMode="MultiLine" Width="400px" Height="60px"></asp:TextBox>

                 </td>
             </tr>
         </table>
       </div>
    <div align="center" class="box box-success" style="padding-top: 12px; padding-bottom: 12px; top: 0px; right: 0px;">
        <asp:Button ID="Button2" runat="server" CssClass="btn btn-block btn-danger" Text="ثبت اطلاعات" OnClick="ASPxButton1_Click" Width="150px" ValidationGroup="g1" />
   </div>
    <br />
    <div class="box box-danger">
        <table style="width:100%">
            <tr>
                <td style="width:50%">
                    <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="Office2010Silver" AutoGenerateColumns="False" DataSourceID="sourceCapacity" RightToLeft="True" Width="100%"  Font-Names="vazir">
           
            <Settings ShowFilterRow="True" ShowGroupPanel="True" HorizontalScrollBarMode="Auto" />
            
            <SettingsSearchPanel Visible="True" />
            <SettingsLoadingPanel Text="در حال اجرا..." />
            <SettingsText ConfirmDelete="آیا ردیف انتخابی حذف شود؟" EmptyDataRow="اطلاعات موجود نمی باشد" GroupPanel="ستون مورد نظر جهت گروه بندی اطلاعات را وارد نمایید" SearchPanelEditorNullText="متن مورد جستجو را وارد نمایید" />
            <Columns>
                <dx:GridViewDataTextColumn FieldName="SeasonName" VisibleIndex="1" Caption="فصل" GroupIndex="0" ReadOnly="True" SortIndex="0" SortOrder="Ascending" >
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CapacityType" VisibleIndex="2" ReadOnly="True" Caption="نوع" >
                </dx:GridViewDataTextColumn>
                
                <dx:GridViewDataTextColumn FieldName="ZarfiatAsli" VisibleIndex="4" ReadOnly="True" Caption="ظرفیت" >
                </dx:GridViewDataTextColumn>
                
          
                <dx:GridViewDataTextColumn FieldName="ZarfiatMasrafi" VisibleIndex="5" Caption="ظرفیت مصرفی" ReadOnly="True" >
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ZarfiatAzad" VisibleIndex="6" ReadOnly="True" Caption="ظرفیت آزاد" >
                </dx:GridViewDataTextColumn>
                
            </Columns>
            <Styles>
                <Header Font-Names="vazir" Font-Size="13px" HorizontalAlign="Center">
                </Header>
                <Row HorizontalAlign="Center" Font-Names="vazir">
                </Row>
            </Styles>
        </dx:ASPxGridView>
                </td>
                <td style="width:50%">
                     <asp:Chart ID="Chart1" runat="server" DataSourceID="sourceChart" Height="500px" Palette="SemiTransparent" Width="800px">
                                        <Series>
                                            <asp:Series ChartArea="ChartArea1" Legend="Legend1" Name="Series1" LegendText="سپرده" XValueMember="Season" YValueMembers="Capacity1" Color="Purple" IsValueShownAsLabel="true" CustomProperties="PointWidth=0.8" >
                                            </asp:Series>
                                            <asp:Series ChartArea="ChartArea1" Legend="Legend1" LegendText="تسهیلات" Name="Series2" XValueMember="Season" YValueMembers="Capacity2" Color="0, 192, 0" IsValueShownAsLabel="true" CustomProperties="PointWidth=0.8">
                                            </asp:Series>
                                            <asp:Series ChartArea="ChartArea1" Legend="Legend1" LegendText="خدمات غیر حضوری" Name="Series3" XValueMember="Season" YValueMembers="Capacity3" Color="255, 128, 0" IsValueShownAsLabel="true" CustomProperties="PointWidth=0.8">
                                            </asp:Series>
                                            <asp:Series ChartArea="ChartArea1" Legend="Legend1" LegendText="کارت، حسابداری و گزارشات" Name="Series4" XValueMember="Season" YValueMembers="Capacity4" Color="RoyalBlue" IsValueShownAsLabel="true" CustomProperties="PointWidth=0.8">
                                            </asp:Series>
                                        </Series>
                                        <ChartAreas>
                                            <asp:ChartArea Name="ChartArea1">
                                                <AxisX Url="~/LoginPage.aspx">
  						 <MajorGrid Enabled ="False" />
                                                </AxisX>
						<AxisY >
  						 <MajorGrid Enabled ="False" />
                                                </AxisY>
                                            </asp:ChartArea>
                                        </ChartAreas>
                                        <Legends>
                                            <asp:Legend Font="bZar, 10pt" IsTextAutoFit="False" Name="Legend1" Docking="Bottom" Alignment="Center">
                                            </asp:Legend>
                                        </Legends>
                                        <Titles>
                                            <asp:Title Font="bZar, 12pt" Name="Title1" Text="ظرفیت آزاد">
                                            </asp:Title>
                                        </Titles>
                                    </asp:Chart>

                </td>
            </tr>
        </table>
        
</div>
    <div align="center">
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server" FileName="لیست پروژه ها" GridViewID="ASPxGridView1" Landscape="True" PaperKind="A4">
        </dx:ASPxGridViewExporter>
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Content/images/icons/Excel-icon.png" OnClick="ImageButton3_Click" />
    </div>
    <asp:SqlDataSource ID="sourceCapacity" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>"  SelectCommand=" 
        Select Capacity.CompanyId,
	   Case Capacity.Season When 1 then N'بهار' when 2 then N'تابستان' when 3 then N'پاییز'else N'زمستان'End SeasonName,
	   Case Capacity.CapacityTypeId When 1 then N'سپرده' when 2 then N'تسهیلات' when 3 then N'خدمات غیر حضوری'when 4 then N'کارت، حسابداری و گزارشات'End CapacityType,
Capacity.[Year],
Sum(distinct CapacityValue) ZarfiatAsli, isnull(sum(CapacityProjectCalculation.CalcValue),0) ZarfiatMasrafi, Sum(distinct CapacityValue) - isnull(sum(CapacityProjectCalculation.CalcValue),0) ZarfiatAzad
	   From Capacity Left Outer Join CapacityProjectCalculation
												On   Capacity.CompanyId = CapacityProjectCalculation.CompanyId and
													 
Capacity.Season = CapacityProjectCalculation.Season  and
													 
Capacity.Year = CapacityProjectCalculation.Year  and
													 
Capacity.CapacityTypeId = CapacityProjectCalculation.CapacityTypeId
    where Capacity.[Year] = @Year and Capacity.CompanyId = @CompanyId and  Capacity.CapacityTypeId <>5
group by Capacity.CompanyId,Capacity.[Year],Capacity.Season,Capacity.CapacityTypeId oRDER BY  Capacity.Season " >
            <SelectParameters>
                <asp:ControlParameter ControlID="ASPxComboBoxYear" Name="Year" PropertyName="Value"  />
                <asp:ControlParameter ControlID="ASPxComboBoxCompany" Name="CompanyId" PropertyName="Value"  />
            </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="sourceChart" runat="server" ConnectionString="<%$ ConnectionStrings:NewMellatConnectionString %>"  SelectCommand=" 
        Select SeasonId,Season, sum(Capacity1) Capacity1, sum(Capacity2) Capacity2,sum(Capacity3) Capacity3,sum(Capacity4) Capacity4 from (
  Select Capacity.CompanyId,Capacity.CapacityTypeId, Capacity.[Year],Capacity.Season as SeasonId,
     
		Case Capacity.Season When 1 then N'بهار' when 2 then N'تابستان' when 3 then N'پاییز' when 4 then N'زمستان'End Season,
		
	   Case Capacity.CapacityTypeId When 1 then Sum(distinct CapacityValue) - isnull(sum(CapacityProjectCalculation.CalcValue),0) else 0 End Capacity1,
	   Case Capacity.CapacityTypeId When 2 then Sum(distinct CapacityValue) - isnull(sum(CapacityProjectCalculation.CalcValue),0) else 0 End Capacity2,
	   Case Capacity.CapacityTypeId When 3 then Sum(distinct CapacityValue) - isnull(sum(CapacityProjectCalculation.CalcValue),0) else 0 End Capacity3,
	   Case Capacity.CapacityTypeId When 4 then Sum(distinct CapacityValue) - isnull(sum(CapacityProjectCalculation.CalcValue),0) else 0 End Capacity4
	   From Capacity Left Outer Join CapacityProjectCalculation
												On   Capacity.CompanyId = CapacityProjectCalculation.CompanyId and
													 
Capacity.Season = CapacityProjectCalculation.Season  and
													 
Capacity.Year = CapacityProjectCalculation.Year  and
													 
Capacity.CapacityTypeId = CapacityProjectCalculation.CapacityTypeId
where Capacity.[Year] = @Year and Capacity.CompanyId = @CompanyId  and   Capacity.CapacityTypeId <>5
group by Capacity.CompanyId,Capacity.[Year],Capacity.Season,Capacity.CapacityTypeId)
a Group by a.Season,SeasonId
order by SeasonId " >
            <SelectParameters>
                <asp:ControlParameter ControlID="ASPxComboBoxYear" Name="Year" PropertyName="Value"  />
                <asp:ControlParameter ControlID="ASPxComboBoxCompany" Name="CompanyId" PropertyName="Value"  />
            </SelectParameters>
    </asp:SqlDataSource>
    
    <div align="center" class="box box-success" style="padding-top: 12px; padding-bottom: 12px; top: 0px; right: 0px;">
   </div>
</asp:Content>
