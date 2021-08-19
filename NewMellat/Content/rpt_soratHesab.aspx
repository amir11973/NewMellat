<%@ page title="" language="C#" masterpagefile="~/Site2.Master" autoeventwireup="true" codebehind="rpt_soratHesab.aspx.cs" inherits="NewMellat.Content.rpt_soratHesab" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" href="../assets/css/datatables.min.css" />
    <style>
        #btnExport {
            margin-bottom: -49px;
            margin-right: 95%;
            display: block;
        }

        .dataTable {
            overflow-x: scroll;
        }
    </style>
</asp:Content>
<asp:content id="Content2" contentplaceholderid="ContentPlaceHolder1" runat="server">

    <div style="direction: rtl; text-align: right; margin: 15px;">
        <h4 class="alert" style="text-align: center; background-color: #DD4B39; color: white;">گزارش صورتحساب ها  </h4>
        <hr />
        <asp:Literal runat="server" ID="lit1"></asp:Literal>
        <iframe id="txtArea1" style="display: none"></iframe>
        <button id="btnExport" onclick="fnExcelReport();">Excel</button>
        <div class="container" style="display: inline">
            <table id="div1111" class="table table-bordered table-striped" style="width: 95%!important"></table>
        </div>
    </div>
  
    <script src="../assets/js/datatables.min.js"></script>
    <script>
        $(document).ready(function () {
            $.ajax({
                url: "http://172.22.65.16:4581/SqlOData.svc/GetData2/" + username + "/VW_rpt_sooratHesab",
                type: "GET",
                async: true,
                headers: {
                    "accept": "application/json;odata=verbose",
                },
                success: function (data) {
                    var myData = JSON.parse(data).d.results;
                    $('#div1111').DataTable({
                        data: myData,
                        scrollX: true,
                        "lengthMenu": [[10, 25, 50, 100, -1], [10, 25, 50, 100, 'همه']],
                        columns: [
                                { width: "250px", data: 'ProjectName', title: 'نام پروژه' },
                                { data: 'ProjectGharardad', title: 'شماره قرارداد' },
                                { data: 'GharardadStart', title: 'تاریخ شروع' },
                                { data: 'GharardadEnd', title: 'تاریخ پایان' },
                                { data: 'Nazer1', title: 'ناظر1' },
                                { data: 'Nazer2', title: 'ناظر2' },
                                { data: 'CompanyName', title: 'پیمانکار' },
                                { data: 'Gharardad', title: 'نوع قرارداد' },
                                { data: 'Price', title: 'مبلغ' },
                                { data: 'OnvanTahvili', title: 'عنوان تحویلی' },
                                { data: 'MoedTahvili', title: 'موعد تحویل' },
                                { data: 'GharardadType', title: 'مکانیزم' },
                                { data: 'lastStaus', title: 'آخرین وضعیت' },
                                { data: 'lastStausPaShenase', title: 'شناسه نامه ' },
                                { data: 'lastStausPaDate', title: 'تاریخ نامه' },
                                { data: 'paShenase', title: 'شناسه نامه پیش فاکتور' },
                                { data: 'paDate', title: 'تاریخ نامه پیش فاکتور' },
                                { data: 'pishPricePlus', title: 'مبلغ با ارزش افزوده' },
                        ], language: {
                            "sEmptyTable": "هیچ داده‌ای در جدول وجود ندارد",
                            "sInfo": "نمایش _START_ تا _END_ از _TOTAL_ ردیف",
                            "sInfoEmpty": "نمایش 0 تا 0 از 0 ردیف",
                            "sInfoFiltered": "(فیلتر شده از _MAX_ ردیف)",
                            "sInfoPostFix": "",
                            "sInfoThousands": ",",
                            "sLengthMenu": "نمایش _MENU_ ردیف",
                            "sLoadingRecords": "در حال بارگزاری...",
                            "sProcessing": "در حال پردازش...",
                            "sSearch": "جستجو:",
                            "sZeroRecords": "رکوردی با این مشخصات پیدا نشد",
                            "oPaginate": {
                                "sFirst": "برگه‌ی نخست",
                                "sLast": "برگه‌ی آخر",
                                "sNext": "بعدی",
                                "sPrevious": "قبلی"
                            },
                            "oAria": {
                                "sSortAscending": ": فعال سازی نمایش به صورت صعودی",
                                "sSortDescending": ": فعال سازی نمایش به صورت نزولی"
                            }
                        }
                    });
                    $('#div1111_wrapper .row .col-md-6').addClass('col-md-4').removeClass('col-md-6');
                },
                error: function (error) {
                    alert(JSON.stringify(error));
                }
            });
           

        });
        function fnExcelReport() {
            var tab_text = "<table border='2px'><tr bgcolor='#87AFC6'>";
            var textRange; var j = 0;
            tab = document.getElementById('div1111'); // id of table

            for (j = 0 ; j < tab.rows.length ; j++) {
                tab_text = tab_text + tab.rows[j].innerHTML + "</tr>";
                //tab_text=tab_text+"</tr>";
            }

            tab_text = tab_text + "</table>";
            tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");//remove if u want links in your table
            tab_text = tab_text.replace(/<img[^>]*>/gi, ""); // remove if u want images in your table
            tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, ""); // reomves input params

            var ua = window.navigator.userAgent;
            var msie = ua.indexOf("MSIE ");

            if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./))      // If Internet Explorer
            {
                txtArea1.document.open("txt/html", "replace");
                txtArea1.document.write(tab_text);
                txtArea1.document.close();
                txtArea1.focus();
                sa = txtArea1.document.execCommand("SaveAs", true, "Say Thanks to Sumit.xlsx");
            }
            else                 //other browser not tested on IE 11
                sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

            return (sa);
        }

        function exportTableToExcel(){
            var downloadLink;
            var dataType = 'application/vnd.ms-excel';
            var tableSelect = document.getElementById('div1111');
            var tableHTML = tableSelect.outerHTML.replace(/ /g, '%20');
    
            // Specify file name
            filename = 'export.xls';
    
            // Create download link element
            downloadLink = document.createElement("a");
    
            document.body.appendChild(downloadLink);
    
            if(navigator.msSaveOrOpenBlob){
                var blob = new Blob(['\ufeff', tableHTML], {
                    type: dataType
                });
                navigator.msSaveOrOpenBlob( blob, filename);
            }else{
                // Create a link to the file
                downloadLink.href = 'data:' + dataType + ', ' + tableHTML;
    
                // Setting the file name
                downloadLink.download = filename;
        
                //triggering the function
                downloadLink.click();
            }
        }
    </script>

</asp:content>
