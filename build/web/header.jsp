<!DOCTYPE html>
<html>
<head>
<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<%-- 
    Document   : shpheader
    Created on : 18 Mar, 2021, 9:36:33 PM
    Author     : LAPTOP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
        
    </head>
    <body>
        <div class="logo_products">
                    <div class="container">
                    <div class="w3ls_logo_products_left1">
                                    <ul class="phone_email">
                                            <li><i class="fa fa-phone" aria-hidden="true"></i>Order online or call us : (+0123) 234 567</li>

                                    </ul>
                            </div>
                            <div class="w3ls_logo_products_left">
                                    <h1><a href="index.html">super Market</a></h1>
                            </div>
                   
                    </div>
            </div>
    </body>
</html>

<!-- //header -->
<!-- navigation -->
	<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
                                                                    <li><a href="index.jsp">Home</a></li>
                                <li>
                                    <a href="product.jsp">products</a>
                                </li>
                                <li><a href="track-order.jsp">track order</a></li>
                                <li><a href="contact-us.jsp">Contact</a></li>
                                <% HttpSession s=request.getSession();
if(s.getAttribute("userpojo")== null)
   {%>
                                <li><a  href="login.jsp">
                                        login</a></li>
                                <li><a  href="register.jsp">
                                        Register</a></li>
                                        <% }
    else
    {%>
       <li><a  href="logout.jsp">
                                        Logout</a></li>
   <% }
%>
                                                                </ul>
                                                        </div></nav>
			</div>
        </div>
		
<!-- //navigation -->