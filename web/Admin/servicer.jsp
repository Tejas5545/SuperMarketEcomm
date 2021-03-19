
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap CDN -->
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
        <link rel="stylesheet" href="../static/bootstrap/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!-- External CSS -->
        <link rel="stylesheet" href="../static/css/skDashboard.css">
        <link rel="stylesheet" href="../static/css/sDashboard.css">
        <!--=== All Plugins CSS ===-->
        <link href="../assets/css/plugins.css" rel="stylesheet">
        <!--=== All Vendor CSS ===-->
        <link href="../assets/css/vendor.css" rel="stylesheet">
        <!--=== Main Style CSS ===-->
        <link href="../assets/css/style.css" rel="stylesheet">
        <!--=== my own css ===-->
        <link href="../assets/css/mycss.css" rel="stylesheet">
        <title>Servicer</title>
    </head>

    <body>
        <!-- Start Header Area -->
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
            <!-- header top end -->

            <!-- main menu start -->
            <div class="main-menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <div class="main-menu">
                                <div class="sticky-logo">
                                    <a href="index.html">
                                        <img src="../assets/img/logo/logo_sticky.png" alt="brand logo">
                                    </a>
                                </div>
                                <!-- main menu navbar start -->
                                <nav id="mobile-menu" aria-label="">
                                    <ul>
                                        <li><a href="index.jsp">Home</a></li>
                                        <li>
                                            <a href="shopkeeper.jsp">Shopkeeper</a>
                                        </li>
                                        <li>
                                            <a href="servicer.jsp">Servicer</a>
                                        </li>
                                        <li>
                                            <a href="customer.jsp">Customer</a>
                                        </li>
                                        <li><a href="../UserLogout?id='hjkgdf'">Logout</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-12 d-block d-lg-none">
                            <div class="mobile-menu"></div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- main menu end -->

        </header>
        <!-- end Header Area -->
        <section>
            <div class="text-center mt-2 bg-gray p-2">
                <h2 class="">Servicer Data</h2>
            </div><hr style="border: 1px solid gray;">
            
            <div class="container-fluid">
                <table class="table table-hover">
                    <thead class="thead-dark text-center">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Mail</th>
                            <th scope="col">Contact</th>
                            <th scope="col">Address</th>
                            <th scope="col">Password</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>example@gmail.com</td>
                            <td>8576549820</td>
                            <td>Mumbai,Maharashtra</td>
                            <td>123456789</td>
                            <td>
                                <button type="button" class="btn btn-primary">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>example@gmail.com</td>
                            <td>8796543210</td>
                            <td>Pune ,Maharashtra</td>
                            <td>123456789</td>
                            <td>
                                <button type="button" class="btn btn-primary">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </body>