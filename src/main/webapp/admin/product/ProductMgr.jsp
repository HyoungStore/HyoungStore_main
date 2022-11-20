<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, product.*"%>
<jsp:useBean id="proMgr" class="product.ProductMgr" />

<html>
<head>
<title>H&S Admin</title>
<meta charset="utf-8">
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
		            <h3><b>상품 목록</b></h3>
		        </div>
		    </div>

		  <!-- board list area -->
		    <div id="board-list">
		        <div class="container">
		            <table class="board-table">
		            <thead>
		                <tr>
		                    <th scope="col" class="th-num">상품명</th>
			                <th scope="col" class="th-title">가격</th>
			                <th scope="col" class="th-writer">키워드</th>
			                <th scope="col" class="th-date">재고</th>
			                <th scope="col" class="th-date">성별</th>
			                <th scope="col" class="th-date">사이즈</th>
		                </tr>
		            </thead>
		            <tbody>
		                <%
						Vector vResult= proMgr.getProductList();
						if(vResult.size() ==0){
						%>
						<td align="center" colspan="7">등록된 상품이 없습니다.</td>
		                <tr>
			                <tr>
			                    <%}else{
										for(int i=0; i<vResult.size(); i++) {
											ProductBean product = (ProductBean)vResult.get(i);
								%>
								<tr>
								<td><%=product.getName()%></td>
								<td><%=product.getPrice()%></td>
								<td><%=product.getKeyword()%></td>
								<td><%=product.getStock()%></td>
								<td><%=product.getGender()%></td>
								<td><%=product.getSize()%></td>
								<td><a href="ProductUpdate.jsp?no=<%=product.getNo()%>">수정하기</a></td>
								<td><a href="javascript:productDelete('<%=product.getNo()%>')">삭제하기</a></td>
								</tr>
								<%}
								}%>
							</tr>
							<td colspan="8" align="center"><a href="ProductInsert.jsp">상품등록</a></td>
							<!-- Flask 이동주소 -->
							<!-- <td colspan="8" align="center"><a href="http://localhost:5000/">상품등록</a></td> -->
						</tbody>
		            </table>

		        </div>
		    </div>
		
		</section>
		<form name="detail" method="post" action="ProductDetail.jsp" >
		<input type="hidden" name="no">
		</form>
		<form name="del" method="post" action="ProductProc.jsp?flag=delete">
		<input type=hidden name=no>
		</form>
</body>
</html>