<%@ page contentType="text/html;charset=utf-8"%>

<% 
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="memMgr" class="user.MemberMgr" />
<jsp:useBean id="regBean" class="user.RegisterBean" />
<jsp:setProperty name="regBean" property="*" />
<%
    boolean flag = memMgr.memberInsert(regBean);
%>

<html>
<head>
<title>형스토어</title>
<html>
<body bgcolor="#FFFFFF">
<br><br>
<center>
<%
if(flag){
	  out.println("<b>회원가입을 축하 드립니다.</b><p>");
	  out.println("<a href=Login.jsp>로그인</a>");
	}else{
		
		out.println( );
		
	  out.println("<b>다시 입력하여 주십시오.</b><p>");
	  out.println("<a href=Register.jsp>다시 가입</a>");
	}
%>
</center>
</body>
</html>
