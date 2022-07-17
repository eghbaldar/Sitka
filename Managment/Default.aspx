<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Managment_Default" %>

<%@ Register assembly="System.Web.DataVisualization" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>کنترل پنل اخصاصی شرکت طراحان وب کاسپین </title>
    
    <link href="../Content/CSS/Managment/css_FF.css" rel="stylesheet" type="text/css" />
    <!--[if IE 6]> <link href="../Content/CSS/Managment/css_6.css" rel="stylesheet" type="text/css" /> <![endif]-->
    <!--[if IE 8]> <link href="../Content/CSS/Managment/css_8.css" rel="stylesheet" type="text/css" /> <![endif]-->
    
    <link type="text/css" href="../Content/CSS/Menu/jquery.ui.all.css" rel="stylesheet" />

    <script type="text/javascript" src="../Content/JS/Menu/jquery-1.4.2.js"></script>

    <script type="text/javascript" src="../Content/JS/Menu/jquery.ui.widget.js"></script>

    <script type="text/javascript" src="../Content/JS/Menu/jquery.ui.accordion.js"></script>

    <link type="text/css" href="../Content/CSS/Menu/demos.css" rel="stylesheet" />

    <script type="text/javascript">
	$(function() {
		$("#accordion").accordion({
			event: "mouseover"
		});
	});
	</script>

    <script type="text/javascript">
	    function SetGuid(str)	{document.getElementById('TextGuid').innerHTML=str;	}
    </script>

    <!-- <script type="text/javascript" src="../Content/JS/Talk/jquery-1.js"></script> -->

    <script type="text/javascript" src="../Content/JS/Talk/hovertip.js"></script>

    <script type="text/javascript">
			$(document).ready(function() { window.setTimeout(hovertipInit, 1);   });
    </script>

    <link href="../Content/CSS/Talk/css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 81%;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            font-family: Tahoma;
            font-size: 11px;
            text-align: center;
        }
        .style4
        {
            font-family: Tahoma;
            font-size: 11px;
        }
    </style>
</head>
<body>
    
    <div id="body">
        <form id="form1" runat="server">
        <div id="header">
            <div id="username">
                <span id="textUsername">
                <table class="style2">
                    <tr>
                        <td >
                            <span id="textUsername1"><asp:Label ID="lbl_Username" runat="server" style="font-weight:bold;"></asp:Label>
                </span>
                        </td>
                        <td>
                <span id="textUsername0">
                            <asp:Label ID="lbl_DateTime" runat="server"></asp:Label>
                </span>
                        </td>
                    </tr>
                </table>
                </span>
            </div>
            <div id="logo">
                <img src="../Content/Images/Managment/logo.gif" /></div>
            <div id="caspianteam">
                <img src="../Content/Images/Managment/caspianteam.gif" /></div>
            <div id="mareqe">
                <div id="text_M">
                    <marquee style="width: 112%" onmouseover="this.stop()" onmouseout="this.start()"
                        scrollamount="1" scrolldelay="80" direction="down" height="24">
                         <P style="MARGIN: 5px" align=center>
                         <SPAN style="FONT-SIZE: 8pt">
                         <BR />
                         <BLOGLINKS />
                         <BR />
            		 	<A class="links" href="http://www.CaspianTeam.com" target="_blank" style="text-decoration:none;"><SPAN style="COLOR:#103678;font-family:Tahoma, Geneva, sans-serif;text-decoration:none;font-size:11px;">www.CaspianTeam.com  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  سیستم مدیریت محتوی کاسپین </SPAN></A>
         				<BR />
         				<BR />                        
                        <SPAN style="COLOR: #ff9966"></SPAN>                         
            		 	<A class="links" href="http:/www.forum.CaspianTeam.com" target="_blank" style="text-decoration:none;"><SPAN style="COLOR:#103678;font-family:Tahoma, Geneva, sans-serif;text-decoration:none;font-size:11px;">www.forum.CaspianTeam.com  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  مشکلات و سوالات خود </SPAN></A>
         				<BR />
         				<BR />                        
                        <SPAN style="COLOR: #ff9966"></SPAN>
		 				<A class="links" href="http://www.Suport.CaspianTeam.com" target="_blank" style="text-decoration:none;"><SPAN style="COLOR:#103678;font-family:Tahoma, Geneva, sans-serif;text-decoration:none;font-size:11px;">www.Suport.CaspianTeam.com  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  ارتباط با واحد پشتیبان  </SPAN></A>
                        <SPAN style="COLOR: #ff9966"> 
         				<BR />
         				<BR />                        
         				</SPAN>
         				</SPAN>
         				</P></marquee>
                </div>
            </div>
            <div id="menuBar">
                <a href="../Default.aspx" onmousemove="return SetGuid('رفتن به صفحه اصلی سایت');" onmouseout="return SetGuid(' ');">
                    <img src="../Content/Images/Managment/home.gif" border="0" /></a> <a href="#" onmousemove="return SetGuid('صندوق پیام ها');"
                        onmouseout="return SetGuid(' ');">
                        <img src="../Content/Images/Managment/message.gif" border="0" /></a> <a href="http://www.CaspianTeam.com" target="_blank"
                            onmousemove="return SetGuid('طراحان وب کاسپین');" onmouseout="return SetGuid(' ');">
                            <img src="../Content/Images/Managment/caspian.gif" border="0" /></a>
                <a href="#" onmousemove="return SetGuid('خروج از کنترل پنل');" onmouseout="return SetGuid(' ');">
                
                    
                    <asp:ImageButton ID="btnSingOut" runat="server" OnClientClick="return confirm('آیا از خروج خود مطمئن هستید؟');"
                    ImageUrl="../Content/Images/Managment/exit.gif" />
                    
                </a>
                <div id="GuidMenuBar">
                    <div id="TextGuid">
                    </div>
                    <img src="../Content/Images/Managment/Place1.gif" border="0" />
                </div>
            </div>
            <div id="version">
                <a href="http://www.caspianteam.com" style="text-decoration: none; color: #FFF;"
                    target="_blank">نسخه دوم مدیریت محتوی سیتکا </a>
            </div>
        </div>
        <div id="center">
            <div id="MenuRight">
                <img src="../Content/Images/Managment/Gray.gif" />
                <div id="M0">
                    <img src="../Content/Images/Managment/menu.gif" id="menu" />
                    <span id="textMenu">دسترسی سریع | Quick Access</span>
                </div>
                <div id="ContentMenuRight">
                    <div class="demo">
                        <div id="accordion">
                            <h3>
                                <a href="Default.aspx">صفحه اصلی کنترل پنل</a></h3>
                            <div>
                            </div>
                            <h3>
                                <a href="#">مدیریت مقالات</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش مقالات</li>
                                        <li>اضافه کردن مقاله</li>
                                        <li>ویرایش مقالات</li>
                                        <li>گروهبندی مقالات</li>
                                        <li>نظرات</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت درباره ما</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>ویرایش درباره ما</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت تماس با ما</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>مشاهده پیام ها</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت پست الکترونیکی</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش </li>
                                        <li>اضافه کردن </li>
                                        <li>ویرایش </li>
                                        <li>گروهبندی </li>
                                        <li>تنظیمات SMTP</li>
                                        <li>ارسال نامه الکترونیکی</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت فایل ها</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>مدیریت فایل ها</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت گالری تصاویر</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش گالری تصاویر</li>
                                        <li>اضافه کردن عکس</li>
                                        <li>ویرایش </li>
                                        <li>مدیریت آلبوم ها</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت پیوند ها</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش پیوند ها </li>
                                        <li>اضافه کردن پیوند</li>
                                        <li>ویرایش پیوند ها</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت محدود کردن IP</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش </li>
                                        <li>اضافه کردن </li>
                                        <li>ویرایش </li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت کالا ها</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش </li>
                                        <li>اضافه کردن کالا</li>
                                        <li>ویرایش کالا</li>
                                        <li>گروهبندی کالا ها</li>
                                        <li>نظرات</li>
                                        <li>امتیازات</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت کاربران</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>مدیریت کاربران</li>
                                        <li><a href="Modules/Login/CreateUser.aspx" style="text-decoration:none;">ایجاد کاربر</a></li>
                                        <li>حق دسترسی کاربران</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت فیلم ها</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش فیلم ها </li>
                                        <li>اضافه کردن فیلم</li>
                                        <li>ویرایش فیلم ها</li>
                                        <li>گروهبندی فیلم ها</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت اخبار</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>نمایش </li>
                                        <li>اضافه کردن خبر</li>
                                        <li>ویرایش خبر ها</li>
                                        <li>گروهبندی خبر ها</li>
                                    </ul>
                                </div>
                            </div>
                            <h3>
                                <a href="#">مدیریت صفحه خارج از دسترس</a></h3>
                            <div>
                                <div class="accordion_div">
                                    <ul class="accordion_list">
                                        <li>ویرایش صفحه </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End demo -->
                </div>
            </div>
            <div id="Menuleft">
                <div id="IconCenter">
                    <img src="../Content/Images/Managment/Blue.gif" id="BlueBlue" />
                    <div id="M1">
                        <img src="../Content/Images/Managment/Global.gif" id="Global" />
                        <span id="textM1">دسترسی به بخش ها سایت | Access to Sections Website</span>
                    </div>
                    <div id="ContentMenuCenter">
                        <table class="style1">
                            <tr>
                                <td style="text-align: center">
                                    <a class="size1" href="#" id="j1">
                                        <img src="../Content/Images/Menu/O_Article.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j1">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش مقالات</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن مقاله</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش مقالات</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">گروهبندی</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نظرات</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j2">
                                        <img src="../Content/Images/Menu/O_About.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j2">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش درباره ما</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j3">
                                        <img src="../Content/Images/Menu/O_Contact.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j3">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">مشاهده پیام ها</a><br />
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j4">
                                        <img src="../Content/Images/Menu/O_Email.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j4">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش ایمیل ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن ایمیل</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش ایمیل ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">گروهبندی ایمیل</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">تنظیمات</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ارسال ایمیل</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j5">
                                        <img src="../Content/Images/Menu/O_File.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j5">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">بخش مدیریت فایل ها</a><br />
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a class="size1" href="#" id="j6">
                                        <img src="../Content/Images/Menu/O_Gallert.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j6">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش گالری</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن عکس</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش عکس ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">آلبوم بندی</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j7">
                                        <img src="../Content/Images/Menu/O_Goods.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j7">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش کالا ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن کالا</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش کالا ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">گروهبندی کالا</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نظرات </a>
                                            <br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">امتیازات</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j8">
                                        <img src="../Content/Images/Menu/O_links.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j8">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش پیوند ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش پیوند ها</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j9">
                                        <img src="../Content/Images/Menu/O_IP.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j9">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش آی-پی های مسدود 
                                            شده</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن آی-پی</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش آی-پی های مسدود 
                                            شده</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j10">
                                        <img src="../Content/Images/Menu/O_User.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j10">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن کاربر</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">مدیریت کاربران</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">حق دسترسی کاربران</a><br />
                                        </li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a class="size1" href="#" id="j11">
                                        <img src="../Content/Images/Menu/O_Movie.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j11">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش فیلم ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن فیلم</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش فیلم ها</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">گروهبندی فیلم ها</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j12">
                                        <img src="../Content/Images/Menu/O_News.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j12">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">نمایش اخبار</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">اضافه کردن خبر</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش اخبار</a><br />
                                        </li>
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">گروهبندی اخبار</a><br />
                                        </li>
                                    </ul>
                                    </li>
                                </td>
                                <td>
                                    <a class="size1" href="#" id="j13">
                                        <img src="../Content/Images/Menu/O_out.jpg" border="0" /></a>
                                    <ul style="display: block; direction: rtl; text-align: center;" class="hovertip"
                                        target="j13">
                                        <li><a style="font-family: Tahoma; font-size: 13px;" href="#">ویرایش صفحه خارج شده</a><br />
                                        </li>
                                    </ul>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
                <div id="Profile">
                    <img src="../Content/Images/Managment/Gray2.gif" />
                    <div id="M2">
                        <img src="../Content/Images/Managment/Profile.gif" id="Profile_" />
                        <span id="textM3">پروفایل | Profile</span>
                    </div>
                    <div id="ContentMenuLeft">
                    
                        <table class="style2">
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Image ID="Im_User" runat="server" BorderColor="#999999" BorderWidth="2px" 
                                        Height="134px" Width="110px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style3">
                                    <asp:Label ID="lbl_FnLn" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    
                    </div>
                    <div id="amar_">
                        <img src="../Content/Images/Managment/amar.gif" />
                        <div id="textAmar">
                            آمار سایت | Site Statistics</div>
                        <div id="ContentMenuLeftAmar">
                            <table class="style2">
                                <tr>
                                    <td class="style4">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        <asp:Chart ID="Chart1" runat="server" BackColor="224, 224, 224" 
                                            BorderlineColor="" Height="163px" 
                                            Palette="None" Width="159px" ImageType="Jpeg">
                                            <series>
                                                <asp:Series BorderColor="DarkSlateGray" ChartType="Doughnut" 
                                                    MarkerBorderColor="Transparent" MarkerColor="Transparent" 
                                                    MarkerImageTransparentColor="Transparent" Name="Series1">
                                                </asp:Series>
                                            </series>
                                            <chartareas>
                                                <asp:ChartArea Name="ChartArea1" BackGradientStyle="TopBottom" 
                                                    BackHatchStyle="Percent90" BackImageTransparentColor="DarkGray" 
                                                    BackSecondaryColor="Gainsboro">
                                                </asp:ChartArea>
                                            </chartareas>
                                        </asp:Chart>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        <asp:Label ID="Label1" runat="server" style="color: #003399; font-weight: 700"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style4">
                                        <asp:Label ID="Label2" runat="server" style="font-weight: 700; color: #FF6600"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         </form>   
    </div>

</body>
</html>
