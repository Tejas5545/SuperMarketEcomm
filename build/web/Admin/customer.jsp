
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Bootstrap CDN -->
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
        <header class="header-area">
            <!-- header top start -->
            <div class="header-top">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-3">
                            
                        </div>
                        <div class="col-lg-9">
                            <div class="header-settings-area">
                                <div class="header-top-left">
                                    <div></div>
                                    <div></div>
                                    <div></div>
                                </div></div>
                        </div>
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
                <h2 class="">Customer Data</h2>
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
                            <td>12345678905</td>
                            <td>mavdi, rajkot</td>
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
                            <td>1234567890</td>
                            <td>Rajkot</td>
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

    </script>
</body>