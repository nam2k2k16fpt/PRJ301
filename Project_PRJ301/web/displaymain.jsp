
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
        <link rel="stylesheet" href="webhead/css/styleself.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

        <script src="https://kit.fontawesome.com/fe000f9b2a.js" crossorigin="anonymous"></script>

        <script>
             
        </script>

    </head>

    <body>
        <section class="header">
            <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Hourseware GoGo</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="#">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Link</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    Category
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                                   aria-expanded="false">
                                    More
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">Action</a></li>
                                    <li><a class="dropdown-item" href="#">Another action</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                                </ul>
                            </li>

                        </ul>
                        <button type="button" class="btn btn-success" onclick="window.location.href='login'" >Sign in </button>

                    </div>
                </div>
            </nav>
        </section>
        <section class="text-bg-secondary">
            <div class="container p-2">
                <div class="row">
                    <div class="col-lg-1" style="font-size: 40px;">
                        <i class="fa-brands fa-docker"></i>
                    </div>
                    <div class="col-lg-11">
                        <div class="input-group mt-2">
                            <input type="text" class="form-control" placeholder="Recipient's username"
                                   aria-label="Recipient's username" aria-describedby="button-addon2">
                            <button type="button" class="btn btn-primary btn-lg"><i
                                    class="fa-solid fa-magnifying-glass"></i></button>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="content mt-3">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3" style="background-color: floralwhite;">
                        <section class="fiter">
                            <section class="panel">
                                <header class="panel-heading">
                                    Category
                                </header>
                                <div class="panel-body">
                                    <ul class="nav prod-cat">
                                        <li>
                                            <a href="#" class="active"><i class="fa fa-angle-right"></i> Kitchen equipment</a>
                                        </li>
                                        <hr>
                                        
                                        <li>
                                            <a href="#"><i class="fa fa-angle-right"></i> Worship things</a>
                                        </li>
                                        <hr>
                                        <li>
                                            <a href="#"><i class="fa fa-angle-right"></i> Other items</a>
                                        </li>
                                        <hr>
                                    </ul>
                                </div>
                            </section>

                            <section class="panel">
                                <header class="panel-heading">
                                    Filter
                                </header>
                                <div class="panel-body">
                                    <form role="form product-form">
                                        <div class="form-group">
                                            <label>Brand</label>
                                            <select class="form-control hasCustomSelect"
                                                    style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                                <option>Wallmart</option>
                                                <option>Catseye</option>
                                                <option>Moonsoon</option>
                                                <option>Textmart</option>
                                            </select>
                                            <span class="customSelect form-control" style="display: inline-block;"><span
                                                    class="customSelectInner"
                                                    style="width: 209px; display: inline-block;">Wallmart</span></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Color</label>
                                            <select class="form-control hasCustomSelect"
                                                    style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                                <option>White</option>
                                                <option>Black</option>
                                                <option>Red</option>
                                                <option>Green</option>
                                            </select>
                                            <span class="customSelect form-control" style="display: inline-block;"><span
                                                    class="customSelectInner"
                                                    style="width: 209px; display: inline-block;">White</span></span>
                                        </div>
                                        <div class="form-group">
                                            <label>Type</label>
                                            <select class="form-control hasCustomSelect"
                                                    style="-webkit-appearance: menulist-button; width: 231px; position: absolute; opacity: 0; height: 34px; font-size: 12px;">
                                                <option>Small</option>
                                                <option>Medium</option>
                                                <option>Large</option>
                                                <option>Extra Large</option>
                                            </select>
                                            <span class="customSelect form-control" style="display: inline-block;"><span
                                                    class="customSelectInner"
                                                    style="width: 209px; display: inline-block;">Small</span></span>
                                        </div>
                                        <button class="btn btn-primary" id="btnn" type="submit">Filter</button>
                                    </form>
                                </div>
                            </section>
                            <section class="panel">
                                <div class="panel-body">
                                    <div class="best-seller">
                                        <div class="col-lg-4 mb-2">
                                            <div class="card bg-warning" style="width: 18rem;">
                                                <img src="img_product/dao-thai-lan-ee.jpg" class="card-img-top" alt="">
                                                <div class="card-body">
                                                    <h5 class="card-title">Card title</h5>
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 mb-2">
                                            <div class="card bg-warning" style="width: 18rem;">
                                                <img src="img_product/284534-dao-thai-thit-ca-harima-fc-gyutou-240mm-tieu-chuan-nhat.jpg" class="card-img-top" alt="">
                                                <div class="card-body">
                                                    <h5 class="card-title">Card title</h5>
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-lg-4 mb-2">
                                            <div class="card bg-warning" style="width: 18rem;">
                                                <img src="C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\Sd24833c03735463c89c23a6da4ccbcacP.jpg" class="card-img-top" alt="">
                                                <div class="card-body">
                                                    <h5 class="card-title">Card title</h5>
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                                </div>
                                            </div>
                                        </div>
                                         <div class="col-lg-4 mb-2">
                                            <div class="card bg-warning" style="width: 18rem;">
                                                <img src="../img_product/chen-com-su-hao-canh-hc01-trang-202009162121057193.jpg" class="card-img-top" alt="">
                                                <div class="card-body">
                                                    <h5 class="card-title">Card title</h5>
                                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                                    <a href="#" class="btn btn-primary">Go somewhere</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </section>
                    </div>
                    <div class="col-lg-9">
                        <div class="row">
                            <section class="panel mb-2" style="background-color: floralwhite;">
                                <div class="panel-body">
                                    <div class="pull-right">
                                        <ul class="pagination pagination-sm pro-page-list">
                                            <li><a href="#">1</a></li>
                                            <li><a href="#">2</a></li>
                                            <li><a href="#">3</a></li>
                                            <li><a href="#">»</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </section>
                        </div>

                        <div class="row product-list" style="background-color: floralwhite;">
                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src=C:\Users\Admin\Documents\Assginment_PRJ\PRJ301\Project_PRJ301\web\img_product\diaxoailongphuongsutrangcaocap.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/Sd24833c03735463c89c23a6da4ccbcacP.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/binh-giu-nhiet-diller-450ml-2-lop-inox-304-xanh.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/307893-binh-hoa-thuy-tinh-body (15).jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/10-768x768.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/7b5d3dc658c673f7cd6e1eb65fc03d5c.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/binh-thy-tinh-ngam-ruou.png" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/1aa0f4f63766d0e8c318922a207b765f.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/binh-thy-tinh-ngam-ruou.png" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/7b5d3dc658c673f7cd6e1eb65fc03d5c.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/chum-battrang-768x763.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/chum-battrang-768x763.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/chum-battrang-768x763.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/dda07b34b96305e18987bde9ff42f7a0.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/con-kho-gia-phat.png" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/cap-long-com-giu-nhiet-elmich-1500ml-el7284-t1.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/de20m-01-439db3e7-523a-4a46-b77e-95a0bc7da693.webp" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-4 mb-2">
                                <div class="card bg-warning" style="width: 18rem;">
                                    <img src="../img_product/0fa5234de4956f9d2917b5336e398394.jpg" class="card-img-top" alt="">
                                    <div class="card-body">
                                        <h5 class="card-title">Card title</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <a href="#" class="btn btn-primary">Go somewhere</a>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>

                </div>
        </section>

        <section class="footer bg-dark text-white">
            <div class="container mt-2">
                <div class="row">
                    <div class="col-lg-2">
                        <h4>CONTENT</h4>
                        <ul class="footer-content-list font-sm">
                            <li><a class="link-inverted" href="/calendar">Calendar of festivities</a></li>
                            <li><a class="link-inverted" href="/new">New assets</a></li>
                            <li><a class="link-inverted" href="/popular">The most popular content</a></li>
                            <li><a class="link-inverted" href="/tags">Search trends</a></li>
                            <li><a class="link-inverted" href="https://www.freepik.com/blog/">Blog</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3">
                        <h4>INFORMATION</h4>
                        <ul class="footer-content-list font-sm">
                            <li><a id="footer-plans-pricing-link" class="link-inverted"
                                   href="https://www.freepik.com/pricing">Pricing</a></li>
                            <li><a class="link-inverted" href="https://www.freepikcompany.com/about_us">About us</a></li>
                            <li><a class="link-inverted" href="https://www.freepikcompany.com/business" target="_blank"
                                   rel="nofollow noopener noreferrer">Business</a></li>
                            <li><a class="link-inverted" href="https://www.freepikcompany.com/jobs">Jobs</a></li>
                            <li><a class="link-inverted" href="https://contributor.freepik.com" target="_blank"
                                   rel="noopener noreferrer">Sell your content</a></li>
                        </ul>
                    </div>
                    <div class="col-lg-3">
                        <h4>LEGAL</h4>
                        <div class="full-width footer__menu footer__link">
                            <ul class="footer-content-list font-sm">
                                <li><a class="link-inverted" href="https://www.freepikcompany.com/legal#nav-freepik"
                                       target="_blank" rel="noopener noreferrer">Terms and conditions</a></li>
                                <li><a class="link-inverted" href="https://www.freepikcompany.com/legal#nav-freepik-license"
                                       target="_blank" rel="noopener noreferrer">License agreement</a></li>
                                <li><a class="link-inverted" href="https://www.freepikcompany.com/privacy" target="_blank"
                                       rel="noopener noreferrer">Privacy policy</a></li>
                                <li><a class="link-inverted" href="https://www.freepikcompany.com/copyright" target="_blank"
                                       rel="noopener noreferrer">Copyright information</a></li>
                                <li><a class="link-inverted" href="https://www.freepikcompany.com/cookie" target="_blank"
                                       rel="noopener noreferrer">Cookies policy</a></li>

                            </ul>
                            <h4 class="mt-3">SUPPORT</h4>
                            <ul class="footer-content-list font-sm">
                                <li><a class="link-inverted" href="https://support.freepik.com/hc/en-us">FAQ</a></li>
                                <li><a class="link-inverted" href="https://www.freepik.com/profile/support">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <h4>SOCIAL MEDIA</h4>


                        <span class="box50 border-danger"> <i class="fa-brands fa-facebook"></i></span>

                        <span class="box50 border-danger"><i class="fa-brands fa-twitter"></i> </span>

                        <span class="box50 border-danger"><i class="fa-brands fa-pinterest"></i> </span>

                        <span class="box50 border-danger"><i class="fa-brands fa-instagram"></i></span>

                        <span class="box50 border-danger"><i class="fa-brands fa-youtube"></i></span>




                    </div>
                    <hr>
                    <div class="row">
                        <div class="col-lg-10">
                            <img src="C:\Users\Admin\Pictures\fc592710-eaff-48b1-be76-bf378c09c277.png" alt="logo.png"
                                 width="191px" height="35px">
                            <p class="font-sm line-height-md text__general--text-inverted mg-none"><span
                                    class="copyright">Copyright</span>&nbsp;©&nbsp; 2010-2023 Freepik Company S.L. <span
                                    class="rights-reserved">All rights reserved.</span></p>
                        </div>
                        <div class="col-lg-2">
                            <div class="dropup-center dropup">
                                <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                    Language
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="#">VietNam</a></li>
                                    <li><a class="dropdown-item" href="#">English</a></li>
                                    <li><a class="dropdown-item" href="#">日本語</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <hr>
                    <div class="row mb-2">
                        <div class="col-lg-6">Hourseware GoGo Company projects</div>

                        <div class="col-lg-1">
                            <ul>
                                <li><a class="bold" href="https://www.freepik.com">Freepik</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-1">
                            <ul>
                                <li><a class="bold another-project" rel="nofollow noopener noreferrer"
                                       href="https://www.flaticon.com" target="_blank">Flaticon</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-1">
                            <ul>
                                <li><a class="bold another-project" rel="nofollow noopener noreferrer"
                                       href="https://slidesgo.com" target="_blank">Slidesgo</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-1">
                            <ul>
                                <li><a class="bold another-project" rel="nofollow noopener noreferrer"
                                       href="https://wepik.com?utm=www.freepik.com" target="_blank">Wepik</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-2">
                            <ul>
                                <li><a class="bold another-project" rel="nofollow noopener noreferrer"
                                       href="https://www.videvo.net" target="_blank">Videvo</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
        </section>



        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
                integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
                integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
        crossorigin="anonymous"></script>
    </body>
</html>
