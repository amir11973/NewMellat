<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pageFinalizeView.aspx.cs" Inherits="NewMellat.Content.pageFinalizeView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../assets/css/bootstrap.css" />
    <link rel="stylesheet" href="../assets/css/datatables.min.css" />

    <style>
        .cardCommon {
            background-color: #C5C3C3;
            border: solid 2px #DD4B39;
            border-radius: 5px;
            width: 48%;
            float: right;
            margin: 8px;
        }

        .lbl {
            font-weight: bold;
            font-style: italic;
        }

        #btnExport {
            margin-bottom: -49px;
            margin-right: 95%;
            display: block;
        }
    </style>


</head>
<body>
  
        <script src="../assets/js/jquery-1.8.2.min.js"></script>
        <script src="../assets/js/datatables.min.js"></script>
        <script src="../assets/js/moment.js"></script>


        <script>
            $(document).ready(function () {
                for (var i = 0; i < myData.length; i++) {
                    myData[i].shDate = moment(myData[i].date).format('jYYYY/jMM/jDD');
                    myData[i].shPaDate = moment(myData[i].paDate).format('jYYYY/jMM/jDD');
                    myData[i].ghPricePosh = myData[i].ghPricePosh ? myData[i].ghPricePosh.toLocaleString() : "";
                    myData[i].ghPriceTolid = myData[i].ghPriceTolid ? myData[i].ghPriceTolid.toLocaleString() : "";
                    myData[i].PriceSecurity = myData[i].PriceSecurity ? myData[i].PriceSecurity.toLocaleString() : "";
                }

                $('#div1111').DataTable({
                    data: myData,
                    "lengthMenu": [[-1, 10, 25, 50], ['همه', 10, 25, 50]],
                    columns: [
                        { data: 'prId', title: 'شناسه' },
                        { data: 'prTitle', title: 'عنوان پروژه' },
                        { data: 'ghCode', title: 'شماره قرارداد' },
                        { data: 'paShenase', title: 'شناسه نامه درخواست' },
                        { data: 'shPaDate', title: 'تاریخ نامه درخواست' },
                        { data: 'peymankarTitle', title: 'پیمانکار' },
                        { data: 'TechnicalSuvisorTitle', title: 'ناظر' },
                        { data: 'vahedTitle', title: 'واحد متولی' },
                        { data: 'inUse', title: 'در حال استفاده' },
                        { data: 'doneUser', title: 'کاربر' },
                        { data: 'shDate', title: 'تاریخ' },
                        { data: 'usersCount', title: 'تعداد نفرات' },
                        { data: 'ghPricePosh', title: 'مبلغ پشتیبانی' },
                        { data: 'ghPriceTolid', title: 'مبلغ تولید' },
                        { data: 'PriceSecurity', title: 'مبلغ الزامات امنیتی' },
                        { data: 'descriptions', title: 'توضیحات' }
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
                    sa = txtArea1.document.execCommand("SaveAs", true, "Say Thanks to Sumit.xls");
                }
                else                 //other browser not tested on IE 11
                    sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));

                return (sa);
            }
        </script>

        <form id="form1" runat="server">
            <asp:Literal runat="server" ID="Lit1"></asp:Literal>
            <div style="direction: rtl; text-align: right; margin: 15px;">
                <h4 class="alert" style="text-align: center; background-color: #DD4B39; color: white;">فرم نظر سنجی  </h4>
                <hr />
                <iframe id="txtArea1" style="display: none"></iframe>
                <button id="btnExport" onclick="fnExcelReport();">Excel</button>
                <div class="container" style="display: inline">
                    <table id="div1111" class="table table-bordered table-striped" style="width:95%!important"></table>
                </div>
            </div>
        </form>
    </body>

</html>
