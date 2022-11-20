<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, user.*, common.*" %>
<jsp:useBean id="memMgr" class="user.MemberMgr" />
<% 
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE html>
<html lang="ko">

<head>
	<title>회원정보 변경</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../../static/css/login.css">
	<script type="text/javascript" src="../../static/js/login.js"></script>
	<script charset="UTF-8" language="JavaScript" src="../../js/script.js"></script>


	<style>
		.wrap {
			width: 75%;
			margin-left: 180;
		}

		.product {
			width: 150;
			margin-left: 20;
			float: left;
		}
	</style>
</head>

<body>

	<div class="super_container">

		<!-- Header -->

		<header>
			<%@ include file="../../Top.jsp" %>
		</header>
		<%RegisterBean regBean=memMgr.getMember(mem_id);%>


		<div class="container" style=Top:20px>
			<div class="row">
				<div class="col product_section">

					<!-- Main Content -->
					<div class="login-page">
						<tr>
							<h2>내 정보 수정</h2>
						</tr>
						<br/>
						<div class="form">
			
							<form name="regForm" method="post" action="MemberUpdateProc.jsp">
								<div class="form-group">
									<td>비밀번호</td>
									<input type="text" class="form-control text-dark" name="mem_passwd"
										value="<%=regBean.getMem_passwd()%>" maxlength="20">
								</div>
								<div class="form-group">
									<td>이름</td>
									<input type="text" class="form-control text-dark" name="mem_name"
										value="<%=regBean.getMem_name()%>">
								</div>
								<div class="form-group">
									<td>이메일</td>
									<input type="text" class="form-control text-dark" name="mem_email" size="30"
										value="<%=regBean.getMem_email()%>">
								</div>
								<div class="form-group">
									<td>주소</td>
									<input type="text" class="form-control text-dark" name="mem_address" size="50"
										value="<%=regBean.getMem_address()%>">
								</div>
								<br/>
								<input type="submit" class="btn btn-outline-success" value="변경">
								<input type="hidden" name="mem_id" value="<%=mem_id%>">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<!-- Footer -->

		<footer>
			<%@ include file="../../Bottom.jsp" %>
		</footer>
	</div>

	<script src="../../script/js/jquery-3.2.1.min.js"></script>
	<script src="../../script/js/categories_custom.js"></script>
</body>

</html>
