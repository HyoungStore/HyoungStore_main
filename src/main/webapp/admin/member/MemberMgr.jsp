<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*, user.*"%>
<jsp:useBean id="memMgr" class="user.MemberMgr" />


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
	
	<%Vector vResult= memMgr.getMemberList();%>

	<section class="notice">
		  <div class="page-title">
		        <div class="container">
		        <br/>
		            <h3><b>회원 정보</b></h3>
		        </div>
		    </div>

		  <!-- board list area -->
		    <div id="board-list">
		        <div class="container">
		            <table class="board-table">
		            <thead>
		                <tr>
		                    <th scope="col" class="th-num">회원이름</th>
			                <th scope="col" class="th-title">회원아이디</th>
			                <th scope="col" class="th-writer">패스워드</th>
			                <th scope="col" class="th-date">전화번호</th>
			                <th scope="col" class="th-date">이메일</th>
			                <th scope="col" class="th-date">수정</th>
		                </tr>
		            </thead>
		            <tbody>
		                <%
						for(int i=0; i<vResult.size(); i++) {
							RegisterBean regBean = (RegisterBean)vResult.get(i);
						%>
		                <tr>
			                <tr>
			                    <td align="center"><%=regBean.getMem_name()%></a></td>
								<td align="center"><%=regBean.getMem_id()%></td>
								<td align="center"><%=regBean.getMem_passwd()%></td>
								<td align="center"><%=regBean.getMem_phone()%></td>
								<td align="center"><%=regBean.getMem_email()%></td>
								<td align="center"><a href="javascript:Update('<%=regBean.getMem_id()%>')" style="color: black";>수정하기</a></td>
								</tr>
								<%}%>
						</tbody>
		            </table>

		        </div>
		    </div>
		
		</section>
		<form name="update" method="post" action="MemberUpdate.jsp">
	<input type=hidden name="mem_id">
	</form>
</body>
</html>
