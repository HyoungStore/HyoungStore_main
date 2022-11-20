<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <!-- Css Styles -->
    <link rel="stylesheet" href="/H&S/static/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/H&S/static/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/H&S/static/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/H&S/static/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/H&S/static/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/H&S/static/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/H&S/static/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/H&S/static/css/style.css" type="text/css">
</head>
 <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>

    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__links">
                            	<%
			                        String mem_id = (String)session.getAttribute("idKey");
			                        
			                        String log="";
			                        if(mem_id == null) log ="<a href=/H&S/sub/user/Login.jsp> 로그인 </a>";
			                        else log = "<a href=/H&S/sub/user/Logout.jsp> 로그아웃 </a>";
			                     
			                        String mem="";
			                        if(mem_id == null) mem ="<a href=/H&S/sub/user/Register.jsp> 회원 등록 </a>";
			                        else mem = "<a href=/H&S/sub/user/MemberUpdate.jsp> 회원정보 수정 </a>";
			                     %>
			                     &nbsp;
                                <a><%=log%></a>
                                <a><%=mem%></a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="/H&S/Index.jsp"><img src="/H&S/static/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="/H&S/Index.jsp">Home</a></li>
                            <li><a href="/H&S/sub/product/ProductList.jsp">Shop</a></li>  
                            <li><a href="/H&S/sub/board/board.jsp">Community</a></li>
                            <li><a href="/H&S/sub/order/OrderList.jsp">Order</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="/H&S/sub/cart/CartList.jsp"><img src="/H&S/static/img/icon/cart.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
	<script src="/H&S/static/js/jquery-3.3.1.min.js"></script>
    <script src="/H&S/static/js/bootstrap.min.js"></script>
    <script src="/H&S/static/js/jquery.nice-select.min.js"></script>
    <script src="/H&S/static/js/jquery.nicescroll.min.js"></script>
    <script src="/H&S/static/js/jquery.magnific-popup.min.js"></script>
    <script src="/H&S/static/js/jquery.countdown.min.js"></script>
    <script src="/H&S/static/js/jquery.slicknav.js"></script>
    <script src="/H&S/static/js/mixitup.min.js"></script>
    <script src="/H&S/static/js/owl.carousel.min.js"></script>
    <script src="/H&S/static/js/main.js"></script>
<body>

</body>
</html>