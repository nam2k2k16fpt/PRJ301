<%-- 
    Document   : listproduct
    Created on : 06-Mar-2023, 21:29:13
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Simple Sidebar - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="icon/dd.png" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="view/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="view/css/styledashboard.css">

        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>
        <style>
            .col-lg-6 h6 {
                font-family: 'Times New Roman', Times, serif;
            }

            .col-lg-6 a {
                background-color: rgb(228, 161, 26);
                float: right;
            }

            input[type=text] {
                min-height: fit-content;
                width: 40%;
            }

            img {
                width: 40px;
                height: 40px;
            }

            .pagination a.active {
                background-color: #777;
                color: white;
            }
            .pagination a:hover:not(.active) {
                background-color: #fff;
            }
            .pagination {
                display: inline-block;
            }
            .pagination a {
                color: black;
                font-size: 22px;
                float: left;
                padding: 8px 16px;
                text-decoration: none;
            }
        </style>


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
                            <a href="#">New User</a>
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
                                <li class="nav-item active"><a class="nav-link" href="main">Home</a></li>
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
                            <h4>Supplier list</h4>
                            <h6>Supplier list</h6>
                        </div>
                        <div class="col-lg-6 ">
                            <a href="addsupplier" class="btn btn-added"><i class="fa-solid fa-plus"></i>Add New Supplier</a>
                        </div>
                        <hr>
                    </div>
                    <div class="row">
                        <div class="search">
                            <div class="form-floating">
                                <input type="text" class="form-control" id="floatingInputGrid"
                                       placeholder="name@example.com">
                                <label for="floatingInputGrid"><i class="fa-solid fa-magnifying-glass"></i>
                                    Search...</label>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive dataview">
                                <table class="table datatable ">
                                    <thead>
                                        <tr>
                                            <th>SupplierId</th>
                                            <th>SupplierName</th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>City</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        
                                        <c:forEach items="${requestScope.data}" var="i">
                                            <tr>

                                                <td>${i.sup_id}</td>
                                                <td>${i.sup_name}</td>
                                                <td>${i.address}</td>
                                                <td>${i.phone}</td>
                                                <td>${i.city}</td>
                                                <td>
                                                    <a class="me-3" href="updatesupplier?suid=${i.sup_id}">
                                                        <i class="fa-regular fa-pen-to-square"></i>
                                                    </a>
                                                    <a class="confirm-text" href="#"  onclick="doDelete('${i.sup_id}')">
                                                        <i class="fa-solid fa-trash-can"></i>
                                                    </a>
                                                </td>
                                            </tr>

                                        </c:forEach>




                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <center>

                            <c:set var="page" value="${requestScope.page}"/>
                            <div class="pagination">
                                <c:forEach begin="${1}" end="${requestScope.num}" var="i">
                                    <a href="listsupplier?page=${i}" class="${i==page?"active":""}">${i}</a>
                                </c:forEach>
                            </div>
                        </center>

                    </div>
                </div>


            </div>
            <!-- Bootstrap core JS-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Core theme JS-->
            <script src="view/js/scripts.js"></script>
            <script type="text/javascript">
                function doDelete(id) {
                    if (confirm("Are you are to delete category id= " + id + "?")) {
                        window.location = "deletesupplier?suid=" + id; //trang DeleteServlet se thuc hien xoa cau truy van
                    }
                }
            </script>
    </body>

</html>
