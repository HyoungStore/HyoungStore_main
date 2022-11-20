<%@ page pageEncoding="UTF-8"%>
<%@ page import="java.util.*, order.*"%>
<%@ page import="java.util.*, product.*"%>
<jsp:useBean id="orderMgr" class="order.OrderMgr" />
<jsp:useBean id="proMgr" class="product.ProductMgr" />

<html>
<head>
	<title>H&S Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../static/css/board.css">
	<script language="JavaScript" src="../static/script.js"></script>
</head>
<body>

	<%@ include file="../Top.jsp" %> 
	

	<section class="notice">
		  <div class="page-title">
		        <div class="container">
		        <br/>
		            <h3><b>H&S Admin</b></h3>
		        </div>
		    </div>

		  <!-- board list area -->
		    <div id="board-list">
		        <div class="container">
		            <table class="board-table">
		            <thead>
		                <tr>
		                    <th scope="col" class="th-num">주문번호</th>
			                <th scope="col" class="th-title">주문자</th>
			                <th scope="col" class="th-writer">제품</th>
			                <th scope="col" class="th-date">주문수량</th>
			                <th scope="col" class="th-date">주문날짜</th>
			                <th scope="col" class="th-date">주문상태</th>
		                </tr>
		            </thead>
		            <%
					Vector vResult = orderMgr.getOrderList();
					if(vResult.size() ==0){
					%>
					<tr> 
					<td align="center" colspan="7">주문 내역이 없습니다</td>
					</tr>
					<%}else{
						for(int i=0; i< vResult.size(); i++) {
						OrderBean order = (OrderBean)vResult.get(i);
						ProductBean product = proMgr.getProduct(order.getProduct_no());
					%>
		            <tbody>     
						<tr>
							<td><%=order.getNo()%></td>
							<td><%=order.getId()%></td>
							<td><%=product.getName()%></td>
							<td><%=order.getQuantity()%></td>
							<td><%=order.getDate()%></td>
							<td>								
								<%
									switch(Integer.parseInt(order.getState())) {
									case 1 : out.println("접수중");
									break;
									case 2 : out.println("접수");
									break;
									case 3 : out.println("입금확인");
									break;
									case 4 : out.println("배송준비");
									break;
									case 5 : out.println("배송중");
									break;
									default : out.println("완료");
								}%>
							</td>
						

						<td colspan="7" align="center"><a href="OrderDetail.jsp?no=<%=order.getNo()%>">상세보기</a></td>
						</tr>
						</tbody>
		            
					<%}
						}%>
						</table>
		        </div>
		        
		    </div>
		
		</section>
		<form name="detail" method="post" action="OrderDetail.jsp" >
		<input type="hidden" name="no">
	</form>
</body>
</html>