<%-- 
    Document   : addproduct
    Created on : 08-Mar-2023, 03:33:32
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Add product</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="icon/dd.png" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="view/css/styles.css" rel="stylesheet" >
        <link href="view/css/styledashboard.css" rel="stylesheet">
        <link href="view/css/styleproduct.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>


    </head>

    <body style="background-color: floralwhite;">
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-light" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light"> <i class="fa-brands fa-docker"></i> Hourseware GoGo
                </div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="dashbsr"> &nbsp;
                        Dashboard</a>
                    <div class="dropdown list-group-item list-group-item-action list-group-item-light p-3">
                        <button class="dropbtn">Product</button>
                        <div class="dropdown-content">
                            <a href="lps">Product List</a>
                            <a href="adps">Add Product</a>
                            <a href="lcs">Category List</a>
                            <a href="acs">Add Category</a>
                        </div>
                    </div>

                    <div class="dropdown list-group-item list-group-item-action list-group-item-light p-3">
                        <button class="dropbtn">Orders</button>
                        <div class="dropdown-content">
                            <a href="#">Order List</a>
                            <a href="#">Add Order</a>
                        </div>
                    </div>
                    <div class="dropdown list-group-item list-group-item-action list-group-item-light p-3">
                        <button class="dropbtn">People</button>
                        <div class="dropdown-content">
                            <a href="#">Customer List</a>
                            <a href="#"> Add Customer</a>
                            <a href="#">Supplier List</a>
                            <a href="#">Add Supplier</a>

                        </div>
                    </div>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!"> &nbsp; Charts</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">&nbsp; Account</a>
                    <div class="dropdown list-group-item list-group-item-action list-group-item-light p-3">
                        <button class="dropbtn">Users</button>
                        <div class="dropdown-content">
                            <a href="account.html">New User</a>
                            <a href="#">Users List</a>
                        </div>
                    </div>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">&nbsp; Sign
                        Out</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-subtle bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle"><i class="fa-solid fa-bars"></i></button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation"><span
                                class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="index1.html">Home</a></li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                                       data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Admin</a>
                                    <div class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#!">Sign out</a>
                                        <a class="dropdown-item" href="#!">Account</a>

                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container mt-4">
                    <div class="row">
                        <div class="col-lg-6 ">
                            <h4>Customer Add</h4>
                            <h6>Create new customer</h6>
                        </div>

                        <hr>
                    </div>
                    <form action="addcustomer" method="post">
                        <div class="row">

                            <div class="col-lg-3">
                                <label for="">Customer_id:</label> <br>
                                <input type="text" name="cuid" placeholder="cus_name" required>
                            </div>
                            <div class="col-lg-3">
                                <label for="">First_name:</label> <br>
                                <input type="text" name="cufname"  required>
                            </div>
                            <div class="col-lg-3">
                                <label for="">Last_name:</label> <br>
                                <input type="text" name="culname"  required>
                            </div>
                            <div class="col-lg-3">
                                <label for="">Email: </label> <br>
                                <input type="email" name="email" required>
                            </div>
                            <div class="col-lg-3 mt-4">
                                <label for="">Phonenumber: </label> <br>
                                <input type="text" placeholder="8888888888" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" maxlength="12"  title="Ten digits code" name="phonenum" required>
                            </div>
                            <div class="col-lg-3 mt-4">
                                <label for="">Address: </label> <br>
                                <input type="text" name="address" required>
                            </div>
                            <div class="col-lg-3 mt-4">
                                <label for="">Date of birth:</label> <br>
                                <input type="date" name="dob" required>
                            </div>
                            <div class="col-lg-3 mt-4">
                                <label for="">Gender:</label> <br>
                                <select name="gender">
                                    <c:forEach items="${genderlist}" var="i">
                                        <option value="${i}">${i}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="col-lg-3 mt-4">
                                <label>Membership_name:</label>  <br>
                                <select name="memberid">
                                    <c:forEach var="ii" items="${mnlist}">
                                         <option value="${ii.membership_id}">${ii.membership_name}</option>
                                    </c:forEach>
                                </select>  
                            </div>
                        </div>
                        <br>
                        <div class="row">
                            <div class="col-lg-4 mt-4">
                                <button type="submit" class="btn btn-success">Add</button>
                                <button type="reset" class="btn btn-danger">Cancel</button>
                            </div>

                        </div>

                    </form>
                    <div class="col-lg-8 mt-4">
                        <h6 style="color: red">${error}</h6>
                        <h6 style="color: red">${error2}</h6>
                    </div>






                </div>
                <!-- Bootstrap core JS-->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                <!-- Core theme JS-->
                <script src="view/js/scripts.js"></script>


                </body>

                </html>
