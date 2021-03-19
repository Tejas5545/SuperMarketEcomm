<%-- 
    Document   : register.jsp
    Created on : 18 Mar, 2021, 10:44:07 AM
    Author     : LAPTOP
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
                                <div class="login-reg-form-wrap mt-md-60 mt-sm-60">
                                    <h2>Sign up Form</h2>
                                    <form action="UserSignup" method="post">
                                        <div class="single-input-item">
                                            <input type="text" id="cname" placeholder="Full Name" name="cname"  />
                                            <i class="fas fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                        </div>
                                        <div class="single-input-item">
                                            <input type="email" id="cemail" placeholder="Enter your Email" name="cemail"   />
                                            <i class="fas fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                        </div>
                                        <div class="single-input-item">
                                            <input type="number" id="cmobile" min="1000000000" max="9999999999" step="1"
                                                   placeholder="Enter your Mobile" name="ccontact"  />
                                            <i class="fas fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                        </div>
                                        <div class="single-input-item">
                                            <input type="text" id="caddress" placeholder="Enter your Address" name="cadd"  />
                                            <i class="fas fa-check-circle"></i>
                                            <i class="fas fa-exclamation-circle"></i>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-6">
                                                <div class="single-input-item">
                                                    <input type="password" id="cpsw" placeholder="Enter your Password" name="ccpwd"  />
                                                    <i class="fas fa-check-circle"></i>
                                                    <i class="fas fa-exclamation-circle"></i>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="single-input-item">
                                            <button class="btn btn__bg btn__sqr" id="register">Register</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
    </body>
</html>
