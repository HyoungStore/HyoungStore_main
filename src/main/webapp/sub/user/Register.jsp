<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
	<title>회원가입</title>
    <link rel="stylesheet" href="../../static/css/login.css">
    <script type="text/javascript" src="../../static/js/login.js" ></script> 
    <script language="JavaScript" src="../../static/js/script.js"></script>
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
    
    <form name="regForm" method="post" action="RegisterProc.jsp">
      <input type="text" placeholder="아이디" name="mem_id" maxlength="20"/>
      <input type="button" value="ID중복확인" onClick="idCheck(this.form.mem_id.value)">
      <input type="password" placeholder="비밀번호" name="mem_passwd" maxlength="20"/>
      <input type="password" class="form-control text-dark" placeholder="패스워드 확인" name="mem_repasswd" maxlength="20">
      <input type="text" class="form-control text-dark" placeholder="이름" name="mem_name" maxlength="20">
      <input type="email" class="form-control text-dark" placeholder="이메일" name="mem_email" maxlength="20">
      <input type="text" class="form-control text-dark" placeholder="전화번호" name="mem_phone" maxlength="20">
      <input type="text" class="form-control text-dark" placeholder="주소" name="mem_address" maxlength="20">
      <button type="submit" value="회원가입" onclick="inputCheck()">회원가입</button>
      <p class="message"><a href="Login.jsp">로그인으로 가기</a></p>
    </form>
  </div>
</div>
  </body>
</html>