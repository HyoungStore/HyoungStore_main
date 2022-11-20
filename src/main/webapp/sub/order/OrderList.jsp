<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, product.*, order.*" %>
<jsp:useBean id="proMgr" class="product.ProductMgr" />
<jsp:useBean id="orderMgr" class="order.OrderMgr" />
<% if(session.getAttribute("idKey")==null) { 
	response.sendRedirect("../user/Login.jsp"); 
	}else{ 
%>
<html>

<head>
    <title>주문내역</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../../static/css/board.css">

</head>

<body>
    <header>
        <%@ include file="../../Top.jsp" %>
    </header>

    <section class="notice">
        <div class="page-title">
            <div class="container">
                <br />
                <h3><b>주문 목록</b></h3>
            </div>
        </div>

        <!-- board list area -->
        <div id="board-list">
            <div class="container">
                <table class="board-table">
                    <thead>
                        <tr>
                            <th scope="col" class="th-num">주문번호</th>
                            <th scope="col" class="th-title">제품</th>
                            <th scope="col" class="th-writer">주문수량</th>
                            <th scope="col" class="주문날짜">재고</th>
                            <th scope="col" class="주문상태">성별</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% Vector vResult=orderMgr.getOrder(mem_id); if(vResult.size()==0){ %>

                            <tr>
                                <td align="center" colspan="5">주문하신 상품이 없습니다.</td>
                            </tr>
                            <tr>
                            <tr>
                                <%} else { 
                                	for(int i=0; i< vResult.size(); i++) { 
                                		OrderBean order = (OrderBean)vResult.get(i); 
                                		ProductBean product = proMgr.getProduct(order.getProduct_no()); %>
                            <tr>
                                <td align="center">
                                    <%=order.getNo()%>
                                </td>
                                <td align="center"><a href="javascript:productDetail('<%=order.getProduct_no()%>')">
                                        <%=product.getName()%>
                                    </a></td>
                                <td align="center">
                                    <%=order.getQuantity()%>
                                </td>
                                <td align="center">
                                    <%=order.getDate()%>
                                </td>
                                <td align="center">
                                    <% switch(Integer.parseInt(order.getState())) {
                                    	  case 1 : out.println("접수중"); break;
                                          case 2 : out.println("접수"); break; 
                                          case 3 : out.println("입금확인"); break; 
                                          case 4 : out.println("배송준비"); break; 
                                          case 5 : out.println("배송중"); break; 
                                          default :
                                        	  out.println("완료"); } %>
                                </td>
                            </tr>
                            <%} }%>


                    </tbody>
                    <form name="detail" method="post" action="../product/ProductDetail.jsp">
                        <input type="hidden" name="no">
                    </form>
                </table>

            </div>
        </div>

    </section>
    <footer>
        <%@ include file="../../Bottom.jsp" %>
    </footer>
</body>

</html>
<%}%>