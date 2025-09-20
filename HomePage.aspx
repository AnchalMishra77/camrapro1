<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="CameraShoppingOnline.HomePage" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title><meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="css/images/favicon.ico" />
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/stylesheet.css" type="text/css" media="all" />
	
	<script src="js/jquery-1.6.2.min.js" type="text/javascript" charset="utf-8"></script>
	<!--[if IE 6]>
		<script src="js/DD_belatedPNG-min.js" type="text/javascript" charset="utf-8"></script>
	<![endif]-->
	<script src="js/cufon-yui.js" type="text/javascript"></script>
	<script src="js/Myriad_Pro_700.font.js" type="text/javascript"></script>
	<script src="js/jquery.jcarousel.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="js/functions.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 59px;
        }
        .style2
        {
            width: 114px;
            height: 12px;
        }
        .style3
        {
            height: 12px;
        }
        .style4
        {
            height: 20px;
        }
        .style5
        {
            height: 221px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div id="wrapper">
		<!-- Begin Header -->
		<div id="header">
			<!-- Begin Shell -->
			<div class="shell">
				<div  id="logo">
                    <img alt="" src="images/clogo.gif" height="70" width="500" /></div>
				<div id="top-nav">
					<ul>
						<li ><a href="HomePage.aspx" title="Home"><span>Home</span></a></li>
                       
						<li><a href="Admin/Login.aspx" ><span>Admin Login</span></a></li>
						<!--<li><a href="#" title="Blog"><span>Blog</span></a></li>-->
					</ul>
				</div>
				<div class="cl">&nbsp;</div>
				<p id="cart"><span class="profile">Welcome, <a href="#" title="Profile Link">Guest</a> . </span><span class="shopping">Shopping Cart (0) </span></p>
			</div>
			<!-- End Shell -->
		</div>
		<!-- End Header -->
		<!-- Begin Navigation -->
		<div id="navigation">
			<!-- Begin Shell -->
			<div class="shell">
				<ul>
					<li c><a href="HomePage.aspx" title="Home">HOME</a></li>
					<li>
						<a  title="Category">Category</a>
						<div class="dd">
							<ul>
								<li><a href="Item.aspx?cat=sony" title="Sony">Sony</a></li>
                            <li><a href="Item.aspx?cat=nikon" title="Nikon">nikon</a></li>
							<li>
						<a href="Item.aspx?cat=samsung" title="Samsung">Samsung</a></li>
							<li><a href="Item.aspx?cat=fujifilm" title="Fijifilm">Fujifilm</a></li>
					<li><a href="Item.aspx?cat=canon" title="Canon">canon</a></li>
					<li><a href="Item.aspx?cat=kodak" title="Kodak">kodak</a></li>
					<li><a href="Item.aspx?cat=panasonic" title="panasonic">panasonic</a></li>
					<li><a href="Item.aspx?cat=pentax" title="pentax">pentax</a></li>
							</ul>
						</div>
					</li>
                    <li><a href="Registration.aspx" title="Registration">Registration</a></li>
					 <li><a href="Login.aspx" ><span>Login</span></a></li>
                        <li><a href="feedback.aspx" title="Feedback">Feedback</a></li>
						<li><a href="Contactus.aspx"" ><span>Contact &amp; Us</span></a></li>
                    
					
				</ul>
				<div class="cl">&nbsp;</div>
			</div>
			<!-- End Shell -->
		</div>
		<!-- End Navigation -->
		<!-- Begin Slider -->
		<div id="slider">
			<!-- Begin Shell -->
			<div class="shell">
				<ul class="slider-items">
					<li>
						<img src="css/images/slide-img1.jpg" alt="Slide Image" />
						
					</li>
					<li>
						<img src="css/images/slide-img2.jpg" alt="Slide Image" />
						
					</li>
					<li>
						<img src="css/images/slide-img3.jpg" alt="Slide Image" />
						<div class="slide-entry">
							
							<!--<h5>to suit your design's needs;</h5>-->
							
						</div>
					</li>
				</ul>
				<div class="cl">&nbsp;</div>
				<div class="slider-nav">
					
				</div>
			</div>
			<!-- End Shell -->
		</div>
		<!-- End Slider -->
		<!-- Begin Main -->
		<div id="main" class="shell">
			<!-- Begin Content -->
			<div id="content">
				<div class="post">
					<h2>Search Product</h2>
                    <asp:TextBox runat="server" ID="txtsearch" placeholder="Search Here....." BorderColor="#FF6600" 
                        BorderStyle="Solid" BorderWidth="1px" Height="19px" Width="300px"></asp:TextBox>
                    <asp:Button runat="server" Text="Search" ID="btnsearch" CssClass="btn" 
                        Height="24px"  Width="80px" />

				</div>
			</div>
			<!-- End Content -->
			<!-- Begin Sidebar -->
			<!-- End Sidebar -->
			<div class="cl">&nbsp;</div>
			<!-- Begin Products -->
			<div id="products">
				<h2>&nbsp;Products
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </h2>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
                                RepeatDirection="Horizontal" onitemcommand="DataList1_ItemCommand" 
                                Width="140px">
                                <ItemTemplate>
                                   <table class="dtbl">
                                        <tr>
                                            <td class="style5" style="border: thin solid #E4E4E4">
                                               
                                    <div id="dimg">
                                        <asp:Image ID="Image1" runat="server" Height="150px" 
                                            ImageUrl='<%#Eval("Image") %>' Width="128px" />
                                    </div> 
                                        <table class="style1">
                                            <tr>
                                                <td colspan="2" class="style4">
                                                    <asp:Label ID="lbllname" runat="server" Text='<%#Eval("ItemName") %>'></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="style2">
                                                    Price : <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>'></asp:Label>
                                                </td>
                                                <td class="style3">
                                                    <asp:Button ID="Button1" runat="server" CssClass="btn" 
                                                        CommandArgument='<%#Eval("ItemID") %>' Text="Buy" Height="24px" 
                                                        Width="60px" />
                                                </td>
                                            </tr>
                                        </table>
                                     
                              </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                              
                            
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
&nbsp;<div class="cl">&nbsp;</div>
				<div class="cl">&nbsp;dd</div>
				<div class="cl">&nbsp;</div>
			</div>
			<!-- End Products -->
			<!-- Begin Products Slider -->
			<!-- End Products Slider -->
		</div>
		<!-- End Main -->
		<!-- Begin Footer -->
		<div id="footer">
			<div class="boxes">
				<!-- Begin Shell -->
				<div class="shell">
					<div class="box post-box">
						<h2>About Online Camera Shop</h2>
                        <div class="box-entry">
							&nbsp;<p>Welcome Online Camera Shopping, In our site we have categories all 
                                companies of cameras and other electronics assessories related to cameras. You 
                                can buy any kind of camera from our web site by paying creadit and debit card 
                                and we also&nbsp; provide cash on delevery facility.</p>
							<div class="cl">&nbsp;</div>
						</div>
					</div>
					
					<div class="box">
						<h2>Information</h2>
						<ul>
                        <li><a href="Login.aspx" title="Log In">Log In</a></li>
							<li><a href="Registration.aspx" title="Registration">Registration</a></li>
                            <li><a href="Contactus.aspx" title="Contact Us">Contact Us</a></li>
                            <li><a href="feedback.aspx" title="Feedback">Feedback</a></li>
							<li><a href="Privacy Policy.aspx" title="Privacy Policy">Privacy Policy</a></li>
							<li><a href="Terms and Condition.aspx" title="Terms &amp; Conditions">Terms &amp; Conditions</a></li>
							
							
							
                            
							
						</ul>
					</div>
					<div class="box last-box">
						<h2>Categories</h2>
						<ul>
							<li><a href="Item.aspx?cat=sony" title="Sony">Sony</a></li>
                            <li><a href="Item.aspx?cat=nikon" title="Nikon">nikon</a></li>
							<li>
						<a href="Item.aspx?cat=samsung" title="Samsung">Samsung</a></li>
							<li><a href="Item.aspx?cat=fujifilm" title="Fijifilm">Fujifilm</a></li>
					<li><a href="Item.aspx?cat=canon" title="Canon">canon</a></li>
					<li><a href="Item.aspx?cat=kodak" title="Kodak">kodak</a></li>
					<li><a href="Item.aspx?cat=hp" title="Hp">hp</a></li>
					<li><a href="Item.aspx?cat=medion" title="Medion">Medion</a></li>
						</ul>
					</div>
					<div class="cl">&nbsp;</div>
				</div>
				<!-- End Shell -->
			</div>
			<div class="copy">
				<!-- Begin Shell -->
				<div class="shell">
					<div class="carts">
						<ul>
							
							<li><img src="css/images/cart-img1.jpg" alt="PayPal" /></a></li>
							<li><img src="css/images/cart-img2.jpg" alt="VISA" /></a></li>
							<li><img src="css/images/cart-img3.jpg" alt="MasterCard" /></a></li>
						</ul>
					</div>
					<p>© Onlinecamerashopping.com</p>
                    <div class="cl">&nbsp;</div>
				</div>
				<!-- End Shell -->
			</div>
		</div>
		<!-- End Footer -->
	</div>
	<!-- End Wrapper -->
    </form>
</body>
</html>

