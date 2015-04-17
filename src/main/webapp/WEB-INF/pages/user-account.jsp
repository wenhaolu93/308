<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="robots" content="index, follow">
        <title>User Account Page</title>
        <!-- Essential styles -->
        <link rel="stylesheet" href="<c:url value="/resources/assets/bootstrap/css/bootstrap.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/font-awesome/css/font-awesome.min.css"/>" type="text/css">
        <link rel="stylesheet" href="<c:url value="/resources/assets/fancybox/jquery.fancybox.css?v=2.1.5"/>" media="screen">
        
        <!-- Boomerang styles -->
        <link id="wpStylesheet" type="text/css" href="<c:url value="/resources/css/global-style.css"/>" rel="stylesheet" media="screen">
        
        <!-- Favicon -->
        <link href="<c:url value="/resources/images/favicon.png"/>" rel="icon" type="image/png">
        <!-- Assets -->
        <link rel="stylesheet" href="<c:url value="/resources/assets/owl-carousel/owl.carousel.css" />">
        <link rel="stylesheet" href="<c:url value="/resources/assets/owl-carousel/owl.theme.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/assets/sky-forms/css/sky-forms.css"/>">
        <!--[if lt IE 9]>
        <link rel="stylesheet" href="assets/sky-forms/css/sky-forms-ie8.css">
        <![endif]-->
        <!-- Required JS -->
        <script src="<c:url value="/resources/js/jquery.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery-ui.min.js"/>"></script>
        <!-- Page scripts -->
        <link rel="stylesheet" href="<c:url value="/resources/assets/layerslider/css/layerslider.css"/>" type="text/css">
        
    </head>
<body>
<!-- MODALS -->

<!-- MOBILE MENU - Option 2 -->
<section id="navMobile" class="aside-menu left">
    <form class="form-horizontal form-search">
        <div class="input-group">
            <input type="search" class="form-control" placeholder="Search...">
            <span class="input-group-btn">
                <button id="btnHideMobileNav" class="btn btn-close" type="button" title="Hide sidebar"><i class="fa fa-times"></i></button>
            </span>
        </div>
    </form>
    <div id="dl-menu" class="dl-menuwrapper">
        <ul class="dl-menu"></ul>
    </div>
</section> 

<!-- SLIDEBAR -->
<section id="asideMenu" class="aside-menu right">
    <form class="form-horizontal form-search">
        <div class="input-group">
            <input type="search" class="form-control" placeholder="Search..." />
            <span class="input-group-btn">
                <button id="btnHideAsideMenu" class="btn btn-close" type="button" title="Hide sidebar"><i class="fa fa-times"></i></button>
            </span>
        </div>
    </form>
    
    <h5 class="side-section-title">Optional sidebar menu</h5>
    <div class="nav">
        <ul>
            <li>
                <a href="#">Home</a>
            </li>
            <li>
                <a href="#">About us</a>
            </li>
            <li>
                <a href="#">Blog</a>
            </li>
            <li>
                <a href="#">Work</a>
            </li>
            <li>
                <a href="#">Online shop</a>
            </li>
        </ul>
    </div>
    
    <h5 class="side-section-title">Social media</h5>
    <div class="social-media">
        <a href="#"><i class="fa fa-facebook facebook"></i></a>
        <a href="#"><i class="fa fa-google-plus google"></i></a>
        <a href="#"><i class="fa fa-twitter twitter"></i></a>
    </div>
    
    <h5 class="side-section-title">Contact information</h5>
    <div class="contact-info">
        <h5>Address</h5>
        <p>Stony Brook University</p>
        
        <h5>Email</h5>
        <p>cse308@dummyemail.com</p>
        
        <h5>Phone</h5>
        <p>+1 631 623 xxxx</p>
    </div>
</section>

<!-- MAIN WRAPPER -->
<!-- <div class="body-wrap"> -->
    <!-- This section is only for demonstration purpose only. Check out the docs for more informations" -->
    <!-- <div id="divStyleSwitcher" class="style-switcher-slidebar">
    <a href="#" id="cmdShowStyleSwitcher" class="open-panel hidden-xs"><i class="fa fa-cog"></i></a>
    <div class="switch-panel">
        <h3>Boomerang - Style Builder</h3>
        <div class="panel-section">
            <h4 class="title text-uppercase font-normal">Layout options</h4>

            <div class="row">
                <div class="col-xs-6">
                    <div class="form-group">
                        <label>I prefer it:</label> 
                        <select id="cmbLayoutStyle" class="form-control">
                            <option value="1">Fluid</option>
                            <option value="2">Boxed</option>
                        </select>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label></label>
                        <select id="cmbLayoutColor" class="form-control">
                            <option value="1">Light</option>
                            <option value="2">Dark</option>
                        </select>
                    </div>
                </div>
            </div>

            <label class="mt-10">Predefined body backgrounds</label>
            <span class="clearfix"></span>
            <span id="cmbBodyBg" class="color-switch">
                <a href="#" id="cmdBodyBg1" class="body-bg-1 ttip" data-toggle="bottom" title="Solid color"></a>
                <a href="#" id="cmdBodyBg2" class="body-bg-2 ttip" data-toggle="bottom" title="Black Lozenge"></a>
                <a href="#" id="cmdBodyBg3" class="body-bg-3 ttip" data-toggle="bottom" title="Squairy Light"></a>
                <a href="#" id="cmdBodyBg4" class="body-bg-4 ttip" data-toggle="bottom" title="Dark Dotted"></a>
                <a href="#" id="cmdBodyBg5" class="body-bg-5 ttip" data-toggle="bottom" title="Skulls"></a>
                <a href="#" id="cmdBodyBg6" class="body-bg-6 ttip" data-toggle="bottom" title="Image Background - 1"></a>
                <a href="#" id="cmdBodyBg7" class="body-bg-7 ttip" data-toggle="bottom" title="Image Background - 2"></a>
                <span class="clearfix"></span>
            </span>

            <div class="row">
                <div class="col-xs-6">
                    <div class="form-group">
                        <label>Section title:</label>
                        <select id="cmbSectionTitleStyle" class="form-control">
                            <option value="1">Style 1</option>
                            <option value="2">Style 2</option>
                            <option value="3">Style 3</option>
                        </select>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label>Color:</label>
                        <select id="cmbSectionTitleColor" class="form-control" disabled="disabled">
                            <option value="1">Base</option>
                            <option value="2">Alt Base</option>
                            <option value="3">Light</option>
                            <option value="4">Dark</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>   

        <hr> 

        <div class="panel-section">
            <h4 class="title text-uppercase font-normal">Header options</h4> 

            <div class="row">
                <div class="col-xs-6">
                    <div class="form-group">
                        <label>Header:</label>
                        <select id="cmbHeaderStyle" class="form-control">
                            <option value="2">Header 1: Default navbar</option>
                            <option value="3">Header 2: Default navbar + Top header</option>
                            <option value="1">Header 3: Header + Navbar</option>
                            <option value="4">Header 4: Cover</option>
<!-- 
                            <option value="5">Header 1: Default + Mobile nav 2</option>
                            <option value="6">Header 2: Default + Top header + Mobile nav 2</option>
                            <option value="7">Header 3: Header + Navbar + Mobile nav 2</option>
                            <option value="8">Header 4: Cover</option> 
                        </select>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label>Top header color:</label>
                        <select id="cmbTopHeaderColor" class="form-control" disabled="disabled">
                            <option value="1">Light</option>
                            <option value="2">Dark</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>     

        <div class="panel-section">
            <div class="row">
                <div class="col-xs-6">
                    <div class="form-group">
                        <label>Nav shadow</label>
                        <select id="cmbNavShadow" class="form-control">
                            <option value="1">No</option>
                            <option value="2">Yes</option>
                        </select>
                    </div>
                </div>
                <div class="col-xs-6">
                    <div class="form-group">
                        <label>Dropdown arrow:</label>
                        <select id="cmbNavDropdownArrow" class="form-control">
                            <option value="2">Yes</option>
                            <option value="1">No</option>
                        </select>
                    </div>
                </div>          
            </div>
        </div>   

        <hr>

        <div class="panel-section">
            <h4 class="title text-uppercase font-normal">Color options</h4>

            <label>Predefined colors</label>
            <span class="clearfix"></span>
            <span class="color-switch">
                <a href="#" id="cmdSchemeRed" class="color-red" title="Red">Red</a>
                <a href="#" id="cmdSchemeViolet" class="color-violet" title="Violet">Violet</a>
                <a href="#" id="cmdSchemeBlue" class="color-blue" title="Blue">Blue</a>
                <a href="#" id="cmdSchemeGreen" class="color-green" title="Green">Green</a>
                <a href="#" id="cmdSchemeYellow" class="color-yellow" title="Yellow">Yellow</a>
                <a href="#" id="cmdSchemeOrange" class="color-orange" title="Orange">Orange</a>
            </span>
        </div>

        <hr>

        <div class="panel-section">
            <h4 class="title">
                <span class="text-uppercase font-normal">Special</span> 
                <a href="#" class="pop" title="About customization" data-content="We created some examples that show you the multitude of options you have so you make this template as you wish. <br><br>Customization is very easy and it is made in only one file.">
                    <i class="fa fa-question-circle"></i>
                </a>
                <label class="badge base pull-right">New</label>
            </h4>

            <label>Predefined schemes</label>
            <span class="clearfix"></span>
            <span class="color-switch">
                <a href="#" id="cmdSchemeBW" class="color-bw ttip" data-toggle="top" title="Black & White">Black and white</a>
                <a href="#" id="cmdSchemeDark" class="color-dark ttip" data-toggle="top" title="Dark">Dark</a>
                <a href="#" id="cmdSchemeFlat" class="color-flat ttip" data-toggle="top" title="Flat">Flat</a>
            </span>

        </div>

        <div class="panel-section mt-15 hide">
            <a href="#"><span>Reset all applied styles</span></a>
            <br><br>
        </div>

    </div>
</div>  -->
            <!-- HEADER -->
        <div id="divHeaderWrapper">
            <header class="header-standard-2">     
    <!-- MAIN NAV -->
    <div class="navbar navbar-wp navbar-arrow mega-nav" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle navbar-toggle-aside-menu">
                    <i class="fa fa-outdent icon-custom"></i>
                </button>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <i class="fa fa-bars icon-custom"></i>
                </button>

                <a class="navbar-brand" href="" title="Team Ginko for the win!">
                    <img src="<c:url value="/resources/images/ginko-logo.png"/>" alt="Team Ginko for the win!">
                </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden-md hidden-lg">
                        <div class="bg-light-gray">
                            <form class="form-horizontal form-light p-15" role="form">
                                <div class="input-group input-group-lg">
                                    <input type="text" class="form-control" placeholder="I want to find ...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-white" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </div>
                    </li>
                    <li class="dropdown dropdown-meganav mega-dropdown-fluid">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">HOME</a>
                        
                    </li>
                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">MOVIES</a>
                        <ul class="dropdown-menu">
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">MOVIE TIMES</a>
                        <ul class="dropdown-menu">
                            
                        </ul>
                    </li>
                    <li class="dropdown dropdown-meganav mega-dropdown-fluid">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">THEATERS</a>
                        <ul class="dropdown-menu">
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">MOVIE NEWS</a>
                        <ul class="dropdown-menu">
                            
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">HI, MEMBER</a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Account Information</a></li>
                            <li><a href="#">Payment Method</a></li>
                            <li><a href="#">My Favourite Movies</a></li>
                            <li><a href="#">My Favourite Theaters</a></li>
                            <li><a href="#">Notification</a></li>
                            
                        </ul>
                    </li>
                    <li class="dropdown dropdown-aux animate-click" data-animate-in="animated bounceInUp" data-animate-out="animated fadeOutDown" style="z-index:500;">
                        <a href="#" class="dropdown-form-toggle" data-toggle="dropdown"><i class="fa fa-search"></i></a>
                        <ul class="dropdown-menu dropdown-menu-user animate-wr">
                            <li id="dropdownForm">
                                <div class="dropdown-form">
                                    <form class="form-horizontal form-light p-15" role="form">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="I want to find ...">
                                            <span class="input-group-btn">
                                                <button class="btn btn-base" type="button">Go</button>
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown-aux">
                        <a href="#" id="cmdAsideMenu" class="dropdown-toggle dropdown-form-toggle" title="Open slidebar">
                            <i class="fa fa-outdent"></i>
                        </a>
                    </li>
                </ul>
               
            </div><!--/.nav-collapse -->
        </div>
    </div>
</header>        </div>

        <!-- Optional header components (ex: slider) -->
            
    <!-- MAIN CONTENT -->
        <div class="pg-opt">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>User account</h2>
                </div>
                
            </div>
        </div>
    </div>

    <section class="slice bg-white">
        <div class="wp-section user-account">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="user-profile-img">
                            <img src="<c:url value="/resources/images/prv/team/team-agency-2.jpg"/>" alt="">
                        </div>
                        <ul class="categories mt-20">
                            <li><a href="#">Personal informations</a></li>
                            <li><a href="#">Settings</a></li>
                            <li><a href="#">My orders</a></li>
                            <li><a href="#">Wishlist</a></li>
                        </ul>
                    </div>
                    <div class="col-md-9">                     
                        <div class="tabs-framed">
                            <ul class="tabs clearfix">
                                <li class="active"><a href="#tab-1" data-toggle="tab">About me</a></li>
                                <li><a href="#tab-2" data-toggle="tab">Order history</a></li>
                                <li><a href="#tab-3" data-toggle="tab">Wishlist</a></li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="tab-1">
                                    <div class="tab-body">
                                        <dl class="dl-horizontal style-2">
                                            <h3 class="title title-lg">Personal information</h3>
                                            <p class="mb-20"></p>
                                            
                                            <dt>Your name</dt>
                                            <dd>
                                                <span class="pull-left">${sessionScope.firstame} ${sessionScope.lastname}</span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                            <hr>
                                            <dt>Email</dt>
                                            <dd>
                                            <span class="pull-left">${sessionScope.email}</span>
                                                <a href="#" class="btn btn-xs btn-base btn-icon fa-edit pull-right"><span>Edit</span></a>
                                            </dd>
                                           
                                        </dl>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tab-2">
                                    <div class="tab-body" style="padding-bottom: 0;">
                                        <h3 class="title title-lg">My orders</h3>
                                        <p class="mb-20"></p>
                                    
                                    <table class="table table-orders table-bordered table-striped table-responsive no-margin">
                                        <tbody>
                                            <tr>
                                                <th>Order Number</th>
                                                <th>Date</th>
                                                <th>Total</th>
                                                <th>Number of Seats</th>
                                                <th>Movie</th>
                                            </tr>
                                        
                                            <tr>
                                                <td><a href="#">230320</a></td>
                                                <td>23-08-2014</td>
                                                <td>USD 32.45</td>
                                                <td> 2</td>
                                                <td>
                                                    <strong>Interstellar</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">230320</a></td>
                                                <td>23-08-2014</td>
                                                <td>USD 32.45</td>
                                                <td> 2</td>
                                                <td>
                                                    <strong>Interstellar</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">230320</a></td>
                                                <td>23-08-2014</td>
                                                <td>USD 32.45</td>
                                                <td> 2</td>
                                                <td>
                                                    <strong>Interstellar</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">230320</a></td>
                                                <td>23-08-2014</td>
                                                <td>USD 32.45</td>
                                                <td> 2</td>
                                                <td>
                                                    <strong>Interstellar</strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td><a href="#">230320</a></td>
                                                <td>23-08-2014</td>
                                                <td>USD 32.45</td>
                                                <td> 2</td>
                                                <td>
                                                    <strong>Interstellar</strong>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="tab-3">
                                    <div class="tab-body">
                                        <h3 class="title title-lg">My wishlist</h3>
                                        <p class="mb-20"></p>

                                        <div class="row">
                                            <!-- Product list -->
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-1.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">Insurgent</a></h2>
                                                    <p>
                                                    Location: Regal Cinemas Ronkonkoma
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-2.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">Fifty Shades of Grey</a></h2>
                                                    <p>
                                                    Location: Movieland Cinema - Coram
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-3.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">The Lazarus Effect</a></h2>
                                                    <p>
                                                    Location: AMC Loews Stony Brook 17
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <!-- Product list -->
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-1.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">Insurgent</a></h2>
                                                    <p>
                                                    Location: Regal Cinemas Ronkonkoma
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-2.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">Fifty Shades of Grey</a></h2>
                                                    <p>
                                                    Location: Movieland Cinema - Coram
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-3.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">The Lazarus Effect</a></h2>
                                                    <p>
                                                    Location: AMC Loews Stony Brook 17
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <!-- Product list -->
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-1.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">Insurgent</a></h2>
                                                    <p>
                                                    Location: Regal Cinemas Ronkonkoma
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-2.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">Fifty Shades of Grey</a></h2>
                                                    <p>
                                                    Location: Movieland Cinema - Coram
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            
                                            <div class="col-md-4">
                                                <div class="wp-block product">
                                                    <figure>
                                                        <img alt="" src="<c:url value="/resources/images/prv/product-3.jpg"/>" class="img-responsive img-center">
                                                    </figure>
                                                    <h2 class="product-title"><a href="">The Lazarus Effect</a></h2>
                                                    <p>
                                                    Location: AMC Loews Stony Brook 17
                                                    </p>
                                                    <div class="wp-block-footer">
                                                        <span class="price pull-left">RON 233.33</span>
                                                        <a href="#" class="btn btn-sm btn-base btn-icon btn-cart pull-right">
                                                            <span>Add to cart</span>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="col">
                        <h4>Subscription</h4>
                        <p>Sign up if you would like to receive news.</p>
                        <form class="form-horizontal form-light">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Your email address...">
                                <span class="input-group-btn">
                                    <button class="btn btn-base" type="button">Go!</button>
                                </span>
                            </div>
                        </form>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="col">
                        <h4>About us</h4>
                        <p class="no-margin">
                            Ginko is a movie information system that makes it super easy for you to go to the movies, the moment you decide to. <br>
                            <br>
                            Team Ginkgo:<br>
                            Wenhao Lu<br>
                            Shan Liu<br>
                            Ritvik Handa<br>
                            Ravikiran Nageli<br>
                        <br><br>
                        
                        </p>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="col col-social-icons">
                        <h4>Follow us</h4>
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-google-plus"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-skype"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                        <a href="#"><i class="fa fa-flickr"></i></a>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="col">
                       <h4>Contact us</h4>
                       <ul>
                            <li>Computer Science Building, Stony Brook United States</li>
                            <li>Phone: 111-222-3333 </li>
                            <li>Email: <a href="mailto:hello@example.com" title="Email Us">contact@ginkgo.com</a></li>
                            <li>Skype: <a href="skype:my.business?call" title="Skype us">team_ginkgo</a></li>
                            
                        </ul>
                     </div>
                </div>
            </div>
            
            <hr>
            
            
        </div>
    </footer>
</div>

<!-- Essentials -->
    <script src="<c:url value="/resources/js/modernizr.custom.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.mousewheel-3.0.6.pack.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.easing.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.metadata.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.hoverup.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.hoverdir.js"/>"></script>
    <script src="<c:url value="/resources/js/jquery.stellar.js"/>"></script>
    <!-- Boomerang mobile nav - Optional  -->
    <script src="<c:url value="/resources/assets/responsive-mobile-nav/js/jquery.dlmenu.js"/>"></script>
    <script src="<c:url value="/resources/assets/responsive-mobile-nav/js/jquery.dlmenu.autofill.js"/>"></script>
    <!-- Forms -->
    <script src="<c:url value="/resources/assets/ui-kit/js/jquery.powerful-placeholder.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/ui-kit/js/cusel.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.form.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.validate.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.maskedinput.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/sky-forms/js/jquery.modal.js"/>"></script>
    <!-- Assets -->
    <script src="<c:url value="/resources/assets/hover-dropdown/bootstrap-hover-dropdown.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/page-scroller/jquery.ui.totop.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/mixitup/jquery.mixitup.js"/>"></script>
    <script src="<c:url value="/resources/assets/mixitup/jquery.mixitup.init.js"/>"></script>
    <script src="<c:url value="/resources/assets/fancybox/jquery.fancybox.pack.js?v=2.1.5"/>"></script>
    <script src="<c:url value="/resources/assets/waypoints/waypoints.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/milestone-counter/jquery.countTo.js"/>"></script>
    <script src="<c:url value="/resources/assets/easy-pie-chart/js/jquery.easypiechart.js"/>"></script>
    <script src="<c:url value="/resources/assets/social-buttons/js/rrssb.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/nouislider/js/jquery.nouislider.min.js"/>"></script>
    <script src="<c:url value="/resources/assets/owl-carousel/owl.carousel.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/tooltip.js"/>"></script>
    <script src="<c:url value="/resources/assets/bootstrap/js/popover.js"/>"></script>
    <!-- Sripts for individual pages, depending on what plug-ins are used -->
    <script src="<c:url value="/resources/assets/layerslider/js/greensock.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/assets/layerslider/js/layerslider.transitions.js"/>" type="text/javascript"></script>
    <script src="<c:url value="/resources/assets/layerslider/js/layerslider.kreaturamedia.jquery.js"/>" type="text/javascript"></script>
    <!-- Initializing the slider -->
    <script>
    jQuery("#layerslider").layerSlider({
    pauseOnHover: true,
    autoPlayVideos: false,
    skinsPath: 'assets/layerslider/skins/',
    responsive: false,
    responsiveUnder: 1280,
    layersContainer: 1280,
    skin: 'borderlessdark3d',
    hoverPrevNext: true,
    });
    </script>
    <!-- Boomerang App JS -->
    <script src="<c:url value="/resources/js/wp.app.js"/>"></script>
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <!-- Temp -- You can remove this once you started to work on your project -->
    <script src="<c:url value="/resources/js/jquery.cookie.js"/>"></script>
    <script src="<c:url value="/resources/js/wp.switcher.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/js/wp.ga.js"/>"></script>
</body>
</html>