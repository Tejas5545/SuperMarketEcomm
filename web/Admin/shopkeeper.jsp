
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="meta description">
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
        <title></title>
        <!--=== All Plugins CSS ===-->
        <link href="../assets/css/plugins.css" rel="stylesheet">
        <!--=== All Vendor CSS ===-->
        <link href="../assets/css/vendor.css" rel="stylesheet">
        <!--=== Main Style CSS ===-->
        <link href="../assets/css/style.css" rel="stylesheet">

        <!-- Modernizer JS -->
        <script src="../assets/js/modernizr-2.8.3.min.js"></script>
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
                <h2 class="">Shopkeeper Data</h2>
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
                            <td>8469116765</td>
                            <td>hifali, bhabhan road, botad</td>
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
                            <td>8469116765</td>
                            <td>hifali, bhabhan road, botad</td>
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
        
        <section class="mt-5">
            <div class="text-center mt-2 bg-gray p-2">
                <h2 class="">Shops Data</h2>
            </div><hr style="border: 1px solid gray;">
            
            <div class="container-fluid">
                <table class="table table-hover">
                    <thead class="thead-dark text-center">
                        <tr>
                            <th scope="col">Store Id</th>
                            <th scope="col">Shopkeeper Id</th>
                            <th scope="col">Image</th>
                            <th scope="col">Name</th>
                            <th scope="col">Contact</th>
                            <th scope="col">Address</th>
                            <th scope="col">Open time</th>
                            <th scope="col">Close time</th>
                            <th scope="col">Servicer</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <tr>
                            <th scope="row">1</th>
                            <td>2</td>
                            <td>img</td>
                            <td>Mahadev fruits store</td>
                            <td>8469116765</td>
                            <td>gadhadaroad, botad</td>
                            <td>8:00 Am</td>
                            <td>10:00 Pm</td>
                            <td>Yes</td>
                            <td>
                                <button type="button" class="btn btn-primary">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>2</td>
                            <td>img</td>
                            <td>Mahadev fruits store</td>
                            <td>8469116765</td>
                            <td>gadhadaroad, botad</td>
                            <td>8:00 Am</td>
                            <td>10:00 Pm</td>
                            <td>No</td>
                            <td>
                                <button type="button" class="btn btn-primary">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        
        <section class="mt-5">
            <div class="text-center mt-2 bg-gray p-2">
                <h2 class="">Products Data</h2>
            </div><hr style="border: 1px solid gray;">
            
            <div class="container-fluid">
                <table class="table table-hover">
                    <thead class="thead-dark text-center">
                        <tr>
                            <th scope="col">Product Id</th>
                            <th scope="col">Store Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Prize</th>
                            <th scope="col">Unit</th>
                            <th scope="col">Discount</th>
                            <th scope="col">Total Qty</th>
                            <th scope="col">Category</th>
                            <th scope="col">Description</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <tr>
                            <th scope="row">1</th>
                            <td>2</td>
                            <td>Apple</td>
                            <td>img</td>
                            <td>50</td>
                            <td>Kg</td>
                            <td>5%</td>
                            <td>100kg</td>
                            <td>Fruits</td>
                            <td>This is yummy</td>
                            <td>
                                <button type="button" class="btn btn-primary">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>2</td>
                            <td>Apple</td>
                            <td>img</td>
                            <td>50</td>
                            <td>Kg</td>
                            <td>5%</td>
                            <td>100kg</td>
                            <td>Fruits</td>
                            <td>This is yummy</td>
                            <td>
                                <button type="button" class="btn btn-primary">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        
        <section class="mt-5">
            <div class="text-center mt-2 bg-gray p-2">
                <h2 class="">Category Data</h2>
            </div><hr style="border: 1px solid gray;">
            
            <div class="container-fluid">
                <table class="table table-hover">
                    <thead class="thead-dark text-center">
                        <tr>
                            <th scope="col">Product Id</th>
                            <th scope="col">Category</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody class="text-center">
                        <tr>
                            <th scope="row">1</th>
                            <td>Fruits</td>
                            <td>
                                <button type="button" class="btn btn-primary">Edit</button>
                                <button type="button" class="btn btn-danger">Delete</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">1</th>
                            <td>Fruits</td>
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
</html>
