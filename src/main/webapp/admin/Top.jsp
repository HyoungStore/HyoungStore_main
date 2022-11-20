<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HyoungStore</title>
    
    <!-- Css Styles -->
    <link rel="stylesheet" href="/H&S/admin/static/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/H&S/admin/static/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/H&S/admin/static/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/H&S/admin/static/css/style.css" type="text/css">
</head>
<body>
 <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-5">
                        <div class="header__top__right">
                            <div class="header__top__links">
                            	<a href="/H&S/admin/user/AdminLogout.jsp">로그아웃</a></div>
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
                        <a href="/H&S/admin/Index.jsp"><img src="/H&S/admin/static/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="/H&S/Index.jsp">사이트 홈</a></li>
                            <li><a href="/H&S/admin/member/MemberMgr.jsp">회원관리</a></li>  
                            <li><a href="/H&S/admin/product/ProductMgr.jsp">상품관리</a></li>
                            <li><a href="/H&S/admin/order/OrderMgr.jsp">주문관리</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
	<script src="/H&S/admin/static/js/jquery-3.3.1.min.js"></script>
    <script src="/H&S/admin/static/js/main.js"></script>

</body>
</html>