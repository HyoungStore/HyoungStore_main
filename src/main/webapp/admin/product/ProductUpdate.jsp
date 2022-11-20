<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, product.*"%>
<jsp:useBean id="proMgr" class="product.ProductMgr" />

<html>
 <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>H&S Admin</title>
    <link rel="stylesheet" href="../static/css/boardinsert.css">

</head>
<body>
<header>
	<%@ include file="../Top.jsp" %>   
</header>
<%ProductBean product= proMgr.getProduct(request.getParameter("no"));%>
<article class="board-sec">
    <div class="box">
      <h3>상품 수정</h3>
      <form method="post" action="ProductProc.jsp?flag=update" enctype="multipart/form-data">

        <ul>

          <li>상품이름</li>
          <li><input type="text" name="name" value="<%=product.getName()%>"></li>
          <li>상품가격(원)</li>
          <li><input type="text" name="price" size="20" value="<%=product.getPrice()%>"></li>
          <li>상품안내</li>
          <li><textarea rows="10" cols="45" name="detail"><%=product.getDetail()%></textarea></li>
          <li>상품입고수량(개)</li>
          <li><input type="text" name="stock" size="10" value="<%=product.getStock()%>"></li>
          <li>성별</li>
          <li>
	          <select name="gender" value="<%=product.getGender()%>">
			      <option value="0">남자</option>
				  <option value="1">여자</option>
			  </select>
		  </li>
		  	<li>사이즈</li>
		  <li>
	          <select name="size" value="<%=product.getSize()%>">
			      <option value="5">XXL</option>
				  <option value="4">XL</option>
				  <option value="3">L</option>
				  <option value="2">M</option>
				  <option value="1">S</option>
			  </select>
		  </li>
		  <li>상품이미지</li>
		  <img src="../../data/<%=product.getImage()%>" width="500px">
          <li><input type="file" name="image"></li>
        </ul>


      <div class="flex-box">
        <button class="btn-default"><a href="javascript:productUpdate('<%=product.getNo()%>')">수정</a></button>
        <button class="btn-rank2" type="submit"><a href="javascript:productDelete('<%=product.getNo()%>')">삭제</a></button>
      </div>
	</form>
   </div>
</article>
<form name="update" method="post" action="ProductUpdate.jsp">
	<input type=hidden name=no>
</form>
	
<form name="del" method="post" action="ProductProc.jsp?flag=delete">
	<input type=hidden name=no>
</form>
</body>
</html>
