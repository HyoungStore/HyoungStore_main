<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, product.*"%>
<jsp:useBean id="proMgr" class="product.ProductMgr" />

<html>
<head>
    <meta charset="utf-8">
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

      <h3>상품 등록</h3>

		
      <form method="post" action="ProductProc.jsp?flag=insert" enctype="multipart/form-data">

        <ul>

          <li>상품이름</li>
          <li><input type="text" class="form-control text-dark" placeholder="상품이름" name="name" maxlength="50"></li>
          <li>상품가격(&#8361)</li>
          <li><input type="text" class="form-control text-dark" placeholder="상품가격" name="price" maxlength="50"></li>
          <li>상품안내</li>
          <li><textarea rows="10" cols="45" class="form-control text-dark" placeholder="상품설명" name="detail" maxlength="50"></textarea></li>
          <li>상품입고수량(개)</li>
          <li><input type="text" class="form-control text-dark" placeholder="상품수량" name="stock" maxlength="50"></li>
          <li>성별</li>
          <li>
          <select name="gender" class="form-control text-dark" maxlength="50" rows="10">
		  	<option value="0">남자</option>
			<option value="1">여자</option>
		  </select>
		  </li>
		  <li>사이즈</li>
		  <li>
          <select name="size" class="form-control text-dark" maxlength="50" rows="10">
		  	<option value="5">XXL</option>
				<option value="4">XL</option>
				<option value="3">L</option>
				<option value="2">M</option>
				<option value="1">S</option>
		  </select>
		  </li>
		  <li>상품이미지</li>
          <li><input type="file" class="form-control text-dark" placeholder="상품이미지" name="image" maxlength="50"></li>
        </ul>


      <div class="flex-box">
        <button type="reset" class="btn-default"><a style="color: black">다시쓰기</a></button>
        <button class="btn-rank2" type="submit">상품 등록</button>
      </div>
	</form>
    </div>

</body>
</html>
