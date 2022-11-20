<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">

<head>
    <title>로그인</title>
    <link rel="stylesheet" href="../../static/css/login.css">
    <script type="text/javascript" src="../../static/js/login.js"></script>
</head>

<body>
    <header>
        <%@ include file="../../Top.jsp" %>
    </header>
    <div class="login-page">
        <tr>
            <td>
                <h2>로그인</h2>
            <td>
        </tr>
        <br />
        <div class="form">
            <form class="login-form" method="post" action="LoginProc.jsp">
                <input type="text" placeholder="아이디" name="mem_id" maxlength="20" />
                <input type="password" placeholder="비밀번호" name="mem_passwd" maxlength="20" />
                <button type="submit">로그인</button>
                <p class="message"><a href="Register.jsp">회원가입</a></p>
            </form>
        </div>
    </div>
</body>

</html>