
<%@page import="POJOs.PojoUsers"%>
<%@page import="DAOs.DaoUsers"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<%
    PojoUsers pojo = null;
    String email = "";
    String password = "";
    String msg = "";
    int cstmid;
    String name = "";
    String contact = "";
    String address = "";
    String info = "";
    if (session.getAttribute("userpojo") != null) {
        pojo = (PojoUsers) session.getAttribute("userpojo");
        email = pojo.getCstmemail();
        password = pojo.getCstmpassword();
        cstmid = pojo.getCstmid();
        name = pojo.getCstmname();
        contact = pojo.getCstmcontact();
        address = pojo.getCstmaddress();
        info = "<small class='text-success mt-3'>"+name+" are logging</small>";
    } else {
        if (session.getAttribute("email") != null) {
            email = session.getAttribute("email").toString();
        }
    }
    if (session.getAttribute("info") != null) {
        info = session.getAttribute("info").toString();
    }
%>
<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="meta description">
        <title>SuperMarket</title>
        <!--=== All Plugins CSS ===-->
        <link href="assets/css/plugins.css" rel="stylesheet">
        <!--=== All Vendor CSS ===-->
        <link href="assets/css/vendor.css" rel="stylesheet">
        <!--=== Main Style CSS ===-->
        <link href="assets/css/style.css" rel="stylesheet">

        <!-- Modernizer JS -->
        <script src="assets/js/modernizr-2.8.3.min.js"></script>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />


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
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="search" name="Search" placeholder="Search for a Product..." required="">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
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
       

            <!-- main wrapper start -->
            <main>
                <% if(info!=""){
                %>
                <div class="container">
                <div class="alert alert-info alert-dismissible fade show" role="alert">
                    <strong><h4 class="text-center"><% 
                    out.println(info);
                    session.removeAttribute("info");
                    %></h4></strong>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                    </div>
                <%}%>
                <!-- breadcrumb area start -->
                
                <!-- breadcrumb area end -->

                <!-- login register wrapper start -->
                <div class="login-register-wrapper pt-60 pb-60">
                    <div class="container">
                        <div class="member-area-from-wrap">
                            <div class="row">
                                <!-- Login Content Start -->
                                <div class="col-lg-6">
                                    <div class="login-reg-form-wrap  pr-lg-50">
                                        <h2>Sign In</h2>
                                    <form action="UserSignin" method="post">
                                        <div class="single-input-item ">
                                            <input type="email" id="email" placeholder="Enter your Email" value="<%=email%>" name="cemail" />
                                            <i class="fas fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <!--<small>Error message</small>-->
                                        </div>
                                        <div class="single-input-item ">
                                            <input type="password" id="password" placeholder="Enter your Password" value="<%=password%>" name="cpwd" />
                                            <i class="fas fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                            <!--<small>Error message</small>-->
                                        </div>
                                        <div class="single-input-item">
                                            <div
                                                class="login-reg-form-meta d-flex align-items-center justify-content-between">
                                                <div class="remember-meta">
                                                    <div class="custom-control custom-checkbox">
                                                        <input type="checkbox" class="custom-control-input" name="rem" id="rememberMe">
                                                        <label class="custom-control-label" for="rememberMe">Remember
                                                            Me</label>
                                                    </div>
                                                </div>
                                                <a href="#" class="forget-pwd">Forget Password?</a>
                                            </div>
                                        </div>
                                        <div class="single-input-item">
                                            <button class="btn btn__bg btn__sqr" id="login">Login</button>
                                            <a class="btn btn__bg btn__sqr text-white" href="UserLogout">Logout</a>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- Login Content End -->

                            <!-- Register Content Start -->
                            
                            <!-- Register Content End -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- login register wrapper end -->
        </main>
        <!-- main wrapper end -->

        <!--== Start Footer Area Wrapper ==-->
        <jsp:include page="footer.jsp"></jsp:include>
        <!--== End Footer Area Wrapper ==-->

        <!-- Scroll to top start -->
        <div class="scroll-top not-visible">
            <i class="fa fa-angle-up"></i>
        </div>
        <!-- Scroll to Top End -->

        <!--=======================Javascript============================-->
        <!--=== All Vendor Js ===-->
        <script src="assets/js/vendor.js"></script>
        <!--=== All Plugins Js ===-->
        <script src="assets/js/plugins.js"></script>
        <!--=== Active Js ===-->
        <script src="assets/js/active.js"></script>
        <script src="assets/js/active1.js"></script>
    </body>


    <!-- Mirrored from htmldemo.hasthemes.com/selena/selena/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 15 Feb 2021 10:23:15 GMT -->

</html>