<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="user.MemberMgr" %>
<jsp:useBean id="memMgr" class="user.MemberMgr" />

<%
   request.setCharacterEncoding("euc-kr");
   String mem_id = request.getParameter("mem_id");
   boolean check = memMgr.checkId(mem_id);
%>

<html>
<head>
<title>H&S Shopping Mall</title>
<script language="JavaScript" src="../../static/js/script.js"></script>
</head>

<body bgcolor="#FFFFFF">
<br>
<center>
<b><%=mem_id%></b>
<%
  if(check){
     out.println("는 이미 존재하는 ID입니다.<p>");
}else{    
     out.println("는 사용 가능 합니다.<p>");
}
%>
<a href="javascript:this.close();">닫기</a>
</center>
</body>
</html>