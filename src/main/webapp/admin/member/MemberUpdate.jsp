<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*,user.*" %> 
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="user.MemberMgr" />

<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>H&S Shopping Mall</title>
    <link rel="stylesheet" href="../static/css/boardinsert.css">

</head>
<body>
<header>
	<%@ include file="../Top.jsp" %>   
</header>
<%
	String mem_id = request.getParameter("mem_id");
	RegisterBean regBean= memMgr.getMember(mem_id);
	%>
	<article class="board-sec">

    <div class="box">

      <h3>회원 수정</h3>

		
      <form name="regForm" method="post" action="MemberUpdateProc.jsp">

        <ul>
          <li><b>아이디 : <%=regBean.getMem_id()%></b></li>
          <li>비밀번호</li>
          <li><input type="text" name="mem_passwd" size ="50" value="<%=regBean.getMem_passwd()%>"></li>
          <li>이름</li>
          <li><input type="text" name="mem_name" size ="50" value="<%=regBean.getMem_name()%>"></li>
          <li>이메일</li>
          <li><input type="text" name="mem_email" size ="50" value="<%=regBean.getMem_email()%>"></li>
          <li>전화번호</li>
          <li><input type="text" name="mem_phone" size ="50" value="<%=regBean.getMem_phone()%>"></li>
          <li>주소</li>
          <li><input type="text" name="mem_address" size ="50" value="<%=regBean.getMem_address()%>"></li>
        </ul>


      <div class="flex-box">
        <button type="reset" class="btn-default"><a style="color: black">다시쓰기</a></button>
        <button class="btn-rank2" type="submit">수정완료</button>
      </div>
      <input type="hidden" name="mem_id" value="<%=mem_id%>">
	</form>
    </div>

</body>
</html>
