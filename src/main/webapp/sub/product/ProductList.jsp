<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,payment.*"%>
<jsp:useBean id="proMgr" class="product.ProductMgr" />
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>형스토어</title>

</head>

<body>
    <header>
        <%@ include file="../../Top.jsp" %>
    </header>
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Shop</h4>
                        <div class="breadcrumb__links">
                            <a href="../../Index.jsp">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="shop__sidebar">
                        <div class="shop__sidebar__search">
                            <form method="post" name="search" action="ProductSearch.jsp">
                                <select class="search-option" name="searchField" value="name">
                                    <option value="name">제목</option>
                                    <option value="name">제목</option>
                                </select>
                                <input type="text" placeholder="Search..." value="" id="search" name="searchText">

                            </form>
                        </div>
                        <div class="shop__sidebar__accordion">
                            <div class="accordion" id="accordionExample">
                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                    </div>
                                    <div id="collapseOne" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__categories">
                                                <ul class="nice-scroll">
                                                    <li><a href="#">Men</a></li>
                                                    <li><a href="#">Women</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-heading">
                                        <a data-toggle="collapse" data-target="#collapseFour">Size</a>
                                    </div>
                                    <div id="collapseFour" class="collapse show" data-parent="#accordionExample">
                                        <div class="card-body">
                                            <div class="shop__sidebar__size">
                                                <label for="xs">xs
                                                    <input type="radio" id="xs">
                                                </label>
                                                <label for="sm">s
                                                    <input type="radio" id="sm">
                                                </label>
                                                <label for="md">m
                                                    <input type="radio" id="md">
                                                </label>
                                                <label for="xl">xl
                                                    <input type="radio" id="xl">
                                                </label>
                                                <label for="xxl">xxl
                                                    <input type="radio" id="xxl">
                                                </label>

                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- 상품구간 -->
                <% Vector vResult=proMgr.getProductList(); %>
                    <div class="col-lg-9">

                        <div class="row">
                            <% for(int i=0; i<vResult.size(); i++){ product.ProductBean
                                product=(product.ProductBean)vResult.get(i); %>
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <div class="product__item__pic set-bg"><img src="../../data/<%=product.getImage()%>">
                                        </div>
                                        <div class="product__item__text">
                                            <h6>
                                                <%=product.getName()%>
                                            </h6>
                                            <a href="ProductDetail.jsp?no=<%=product.getNo()%>"
                                                class="add-cart">상세보기</a>
                                            <h5>
                                                <%=product.getPrice()%>&nbsp;&#8361
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product__pagination">
                                    <a class="active" href="#">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>
                                    <span>...</span>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </section>
    <!-- Js Plugins -->
    <script src="../../static/js/jquery-3.3.1.min.js"></script>
    <script src="../../static/js/jquery.nice-select.min.js"></script>
    <script src="../../static/js/jquery.slicknav.js"></script>
    <script src="../../static/js/owl.carousel.min.js"></script>
    <script src="../../static/js/main.js"></script>
    <footer>
        <%@ include file="../../Bottom.jsp" %>
    </footer>
</body>

</html>