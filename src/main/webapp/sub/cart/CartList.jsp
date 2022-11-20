<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, order.*, product.*" %>
<jsp:useBean id="cartMgr" class="product.CartMgr" scope="session"/>
<jsp:useBean id="proMgr" class="product.ProductMgr" />
<% if(session.getAttribute("idKey")==null) { 
	response.sendRedirect("Login.jsp"); 
	}else{ 
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>장바구니</title>
    <style>
        input {
            border: 0;
            border-radius: 15px;
            outline: none;
            background-color: #ffffff;
            margin: 2px;
        }
    </style>
</head>

<body>
    <header>
        <%@ include file="../../Top.jsp" %>
    </header>
    <div class="super_container">

        <section class="breadcrumb-option">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb__text">
                            <h4>Shopping Cart</h4>
                            <div class="breadcrumb__links">
                                <a href="Index.jsp">Home</a>
                                <a href="ProductList.jsp">Shop</a>
                                <span>Shopping Cart</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <br /><br />
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <div class="col-lg-9">
                    <div class="shopping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>상품</th>
                                    <th>수량</th>
                                    <th>가격</th>
                                    <th>수정 및 삭제</th>
                                    <th>조회</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% int totalPrice=0 ; Hashtable hCart=cartMgr.getCartList(); if(hCart.size()==0){ %>
                                    <tr>
                                        <td colspan="5" align="center">선택하신 물품이 없습니다.</td>
                                    </tr>
                                    <% } else {
                                    	Enumeration hCartKey=hCart.keys(); 
                                    	while(hCartKey.hasMoreElements()) {
	                                        OrderBean order=(OrderBean)hCart.get(hCartKey.nextElement()); 
	                                        ProductBean product=proMgr.getProduct(order.getProduct_no()); 
	                                        int price=Integer.parseInt(product.getPrice()); 
	                                        int quantity = order.getQuantity();
	                                        int subTotal = price * quantity; 
	                                        totalPrice += price * quantity; %>

                                        <form method="post" action="CartProc.jsp">
                                            <input type="hidden" name="product_no" value="<%=product.getNo()%>">
                                            <input type="hidden" name="flag">
                                            <tr>
                                                <td>
                                                    <%=product.getName()%>
                                                </td>
                                                <td class="quantity__item">
                                                    <div class="quantity">
                                                        <div class="pro-qty-2">
                                                            <input type=text name=quantity
                                                                value="<%=order.getQuantity()%>" size=5>
                                                        </div>
                                                    </div>
                                                </td>
                                                </td>
                                                <td>
                                                    <%=subTotal+""%>
                                                </td>
                                                <td><input type="button" value="수정" size="4" onclick="javascript:cartUpdate(this.form)"> /
                                                    <input type="button" value="삭제" size="4" onclick="javascript:cartDelete(this.form)">
                                                </td>
                                                <td><a href="../product/ProductDetail.jsp?no=<%=product.getNo()%>">상세보기</a>
                                                </td>
                                            </tr>
                                        </form>

                                        <%} }%>



                            </tbody>

                        </table>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="continue__btn">
                                <a href="../product/ProductList.jsp">계속 쇼핑하기</a>
                            </div>
                        </div>
                    </div>
                    <br /><br />
                </div>


                <div class="col-lg-3">
                    <div class="cart__total">
                        <h6>구매하기</h6>
                        <ul>
                            <li>총금액 : <%=totalPrice%> &nbsp;&#8361</li>
                        </ul>
                        <a href="../order/OrderProc.jsp" class="primary-btn">주문하기</a>
                    </div>
                </div>
                <% } %>

            </div>
        </div>
    </div>

    <footer>
        <%@ include file="../../Bottom.jsp" %>
    </footer>
    
</body>

</html>