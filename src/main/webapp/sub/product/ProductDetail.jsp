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
	<%
	product.ProductBean product= proMgr.getProduct(request.getParameter("no"));
	%>
	
    <!-- Shop Details Section Begin -->
    <section class="shop-details">
    <form name="cart" action="CartProc.jsp">
        <div class="product__details__pic">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__breadcrumb">
                            <a href="./index.html">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span><%=product.getName()%></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-3">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">
                                    <div class="product__thumb__pic set-bg"><img src="<%=request.getContextPath()%>/data/<%=product.getImage()%> ">
                                    </div>
                                </a>
                            </li>
                        </ul>
                    </div>
                    
                    <div class="col-lg-6 col-md-9">
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__pic__item">
                                    <img src="<%=request.getContextPath()%>/data/<%=product.getImage()%> ">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product__details__content">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-8">
                        <div class="product__details__text">
                            <h4><%=product.getName()%></h4>
               
                            <h3><%=product.getPrice()%>&nbsp;&#8361</h3>
                            <p><%=product.getDetail()%></p>
                            <!-- 
                            <div class="product__details__option">
                                <div class="product__details__option__size">
                                    <span>Size:</span>
                                    <label for="xxl">xxl
                                        <input type="radio" id="xxl">
                                    </label>
                                    <label class="active" for="xl">xl
                                        <input type="radio" id="xl">
                                    </label>
                                    <label for="l">l
                                        <input type="radio" id="l">
                                    </label>
                                    <label for="sm">s
                                        <input type="radio" id="sm">
                                    </label>
                                </div>
                            </div>
                             -->
                            <div class="product__details__cart__option">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" name="quantity" value="1">
                                    </div>
                                </div>
                                <button class="primary-btn" type="summit">add to cart</button>
                            </div>
						<input type=hidden name=product_no value=<%=product.getNo()%>>
                            
                        </div>
                    </div>
                </div>
                
                
                
                <div class="row">
                    <div class="col-lg-12">
                        <div class="product__details__tab">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-toggle="tab" href="#tabs-5"
                                    role="tab">Description</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs-6" role="tab">Customer
                                    Previews</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-toggle="tab" href="#tabs-7" role="tab">Additional
                                    information</a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="tabs-5" role="tabpanel">
                                    <div class="product__details__tab__content">
                                        <p>상품 입고일 :<span><%=product.getDate()%></span></p>
										<p>성별 :<span><%=product.getGender()%></span></p>
										<p>SIZE :<span><%=product.getSize()%></span></p>
										<p>남은 상품 수량 :<span><%=product.getStock()%></span></p>
										<p>종류 :<span><%=product.getKeyword()%></span></p>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tabs-6" role="tabpanel">
                                    <div class="product__details__tab__content">
                                        <div class="product__details__tab__content__item">
                                           
                                        </div>
                                        <div class="product__details__tab__content__item">
                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="tabs-7" role="tabpanel">
                                    <div class="product__details__tab__content">
                                        <p class="note"></p>
                                        <div class="product__details__tab__content__item">
                                            
                                        </div>
                                        <div class="product__details__tab__content__item">
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           </div>
           </form>
        </section>


<footer>
	<%@ include file="../../Bottom.jsp" %>
</footer>
</body>

</html>