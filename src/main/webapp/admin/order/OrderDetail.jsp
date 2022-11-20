<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, order.*"%>
<%@ page import="java.util.*, product.*"%>
<jsp:useBean id="orderMgr" class="order.OrderMgr" />
<jsp:useBean id="proMgr" class="product.ProductMgr" />

<%
OrderBean order = orderMgr.getOrderDetail(request.getParameter("no"));
ProductBean product = proMgr.getProduct(order.getProduct_no());
%>
<html>
<head>
	<title>H&S Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../static/css/board.css">
	<script language="JavaScript" src="../static/script.js"></script>
</head>
<body>

	<%@ include file="../Top.jsp" %> 
	
<form method=post name="order" action="OrderProc.jsp">
	<section class="notice">
		  <div class="page-title">
		        <div class="container">
		        <br/>
		            <h3><b>구매상품 수정</b></h3>
		        </div>
		    </div>

		  <!-- board list area -->
		    <div id="board-list">
		        <div class="container">
		            <table class="board-table">
		            <thead>
		                <tr>
		                    <th scope="col" class="th-date">고객아이디</th>
			                <th scope="col" class="th-date">주문번호</th>
			                <th scope="col" class="th-date">제품번호</th>
			                <th scope="col" class="th-date">제품이름</th>
			                <th scope="col" class="th-date">제품가격</th>
			                <th scope="col" class="th-date">주문수량</th>
			                <th scope="col" class="th-date">재고수량</th>
			                <th scope="col" class="th-date">주문날짜</th>
			                <th scope="col" class="th-date">주문금액</th>
			                <th scope="col" class="th-date">주문상태</th>
			                <th scope="col" class="th-date">수정</th>
			                <th scope="col" class="th-date">삭제</th>
		                </tr>
		            </thead>

		            <tbody>     
						<tr>
							<td><%=order.getId()%></td>
							<td><%=order.getNo()%></td>
							<td><%=product.getNo()%></td>
							<td><%=product.getName()%></td>
							<td><%=product.getPrice()%>원</td>
							<td><%=product.getStock()%>개</td>
							<td><%=order.getQuantity()+""%></td>
							<td><%=order.getDate()%></td>
							<td><%=order.getQuantity()*Integer.parseInt(product.getPrice())%>원</td>
							<td>
								<select name="state">
								<option value="1">접수중</option>
								<option value="2">접수</option>
								<option value="3">입금확인</option>
								<option value="4">배송준비</option>
								<option value="5">배송중</option>
								<option value="6">완료</option>
								</select>
								<script>document.order.state.value=<%=order.getState()%></script>
							</td>
							<td>								
							<input type="button" value="수정" class="btn btn-outline-primary" size="3" onclick="javascript:orderUpdate(this.form)">
							</td>
							<td>
							<input type="button" value="삭제" class="btn btn-outline-danger" size="3" onclick="javascript:orderDelete(this.form)">
							</td>

						</tr>
						</tbody>

						</table>
		        </div>
		        
		    </div>
		
		</section>
		<input type="hidden" name="no" value="<%=order.getNo()%>">
		<input type="hidden" name="flag">
	</form>
</body>
</html>