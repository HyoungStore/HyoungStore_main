<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, product.*"%>
<jsp:useBean id="proMgr" class="product.ProductMgr" />
<!DOCTYPE html>
<html lang="ko">
<title>형스토어</title>

<body>
   <header>
       <%@ include file="Top.jsp" %>
   </header>
    <!-- Header Section End -->

    <section class="hero">
        <div class="hero__slider owl-carousel">
            <div class="hero__items set-bg" data-setbg="static/img/hero/hero-1.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h6>Spring-Winter Collection</h6>
                                <h2>봄 - 겨울 컬렉션 20~30% 할인중</h2>
                                <p>울 혼방 소재의 하이웨이스트 미디 스커트. 허리 벨트 고리 디테일. 버튼으로 조절 가능한 같은 소재의 벨트. 플리츠 마감 밑단. 심라인 콘실 지퍼 여밈.</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="hero__items set-bg" data-setbg="static/img/hero/hero-2.jpg">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-5 col-lg-7 col-md-8">
                            <div class="hero__text">
                                <h6>Spring-Winter Collection</h6>
                                <h2>봄 - 겨울 컬렉션 20~30% 할인중</h2>
                                <p>울 혼방 소재의 하이웨이스트 미디 스커트. 허리 벨트 고리 디테일. 버튼으로 조절 가능한 같은 소재의 벨트. 플리츠 마감 밑단. 심라인 콘실 지퍼 여밈.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br/>
    <br/>
    <br/>
    <!-- Hero Section End -->
	<section class="product spad">
	<%Vector vResult= proMgr.getProductList();%>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="filter__controls">
                        <li class="active" data-filter="*">All</li>
                    </ul>
                </div>
            </div>
            <div class="row product__filter">
            			<% 
							for(int i=0; i<vResult.size(); i++){
							ProductBean product = (ProductBean)vResult.get(i);
						%>
                <div class="col-lg-3 col-md-6 col-sm-6 col-md-6 col-sm-6 mix new-arrivals">        
                    <div class="product__item sale">
                        <div class="product__item__pic set-bg"><img src="data/<%=product.getImage()%>">
                        </div>
                        <div class="product__item__text">
                            <h6><%=product.getName()%></h6>
                            <a href="product/ProductDetail.jsp?no=<%=product.getNo()%>" class="add-cart">상세보기</a>
                            <h5><%=product.getPrice()%>&nbsp;&#8361</h5>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </section>
    <!-- Banner Section Begin -->
    <section class="banner spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-7 offset-lg-4">
                    <div class="banner__item">
                        <div class="banner__item__pic">
                            <img src="static/img/banner/banner-1.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>봄 자켓 20% 할인</h2>
                            <a href="sub/product/ProductList.jsp">주문하러가기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="banner__item banner__item--middle">
                        <div class="banner__item__pic">
                            <img src="static/img/banner/banner-2.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>악세서리 30% 할인</h2>
                            <a href="sub/product/ProductList.jsp">주문하러가기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="banner__item banner__item--last">
                        <div class="banner__item__pic">
                            <img src="static/img/banner/banner-3.jpg" alt="">
                        </div>
                        <div class="banner__item__text">
                            <h2>봄 신발 20% 할인</h2>
                            <a href="sub/product/ProductList.jsp">주문하러가기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    
    <footer>
    	<%@ include file="Bottom.jsp" %>
    </footer>

    <!-- Js Plugins -->
    <script src="static/js/jquery.slicknav.js"></script>
    <script src="static/js/owl.carousel.min.js"></script>
    <script src="static/js/main.js"></script>
</body>

</html>