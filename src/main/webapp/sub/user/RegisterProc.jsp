<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, common.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="regBean" class="user.RegisterBean"/>
<jsp:setProperty name="regBean" property="*" />
<html lang="ko">
<head>
	<title>회원가입 확인</title>
    <link rel="stylesheet" href="../../static/css/login.css">
    <script type="text/javascript" src="../../static/js/login.js" />
    <script charset="UTF-8" language="JavaScript" src="../../static/js/script.js" />
</head>
<body>
<header>
	<%@ include file="../../Top.jsp" %>
</header>
<div class="login-page">
	<tr>
    	<h2>회원가입</h2>
    </tr>
  <div class="form">
    
    <form name="regForm" method="post" action="MemberInsert.jsp">
    	<div class="form-group"> 
			<jsp:getProperty name="regBean" property="mem_name" />
			작성한 내용입니다. 확인해 주세요.
		</div>
		<tr class="form-group">아이디</tr>
	        <div class="form-group">
	        	<input type="text" class="form-control text-dark" placeholder="아이디" name="mem_id" maxlength="20" value="<jsp:getProperty name ="regBean" property="mem_id" />">
	        </div>
		</tr>
		<tr> 
			<td>패스워드</td>
			<div class="form-group">
				<input type="text" name="mem_passwd" class="form-control text-dark" maxlength="20" value="<jsp:getProperty name="regBean" property="mem_passwd" />">
			</div>
		</tr>
		<tr> 
			<td>이름</td>
			<div class="form-group">
				<input type="text" name="mem_name" class="form-control text-dark" maxlength="20" value="<jsp:getProperty name="regBean" property="mem_name" />">
			</div>
		</tr>
		<tr> 
			<td>이메일</td>
			<div class="form-group"><input type="text" name="mem_email"  size="30" class="form-control text-dark" maxlength="20" value="<jsp:getProperty name="regBean" property="mem_email" />">
			</div>
		</tr>
		<tr> 
			<td>전화번호</td>
			<div class="form-group"><input type="text" name="mem_phone" class="form-control text-dark" maxlength="20" value="<jsp:getProperty name="regBean" property="mem_phone" />">
			</div>
		</tr>
		<tr> 
			<td>주소</td>
			<div class="form-group">
				<input type="text" name="mem_address" size="50" class="form-control text-dark" maxlength="20" value="<jsp:getProperty name="regBean" property="mem_address" />">
			</div>
		</tr>
		<tr>
			<input type="submit" value="확인 완료" class="btn btn-outline-success"> 
		</tr>
	</form>
  </div>
</div>
</body>
</html>