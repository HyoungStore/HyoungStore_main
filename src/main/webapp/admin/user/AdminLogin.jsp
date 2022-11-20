<%@ page contentType="text/html;charset=EUC-KR" %>

<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <title>H&S Admin</title>
    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/carousel/">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<meta name="theme-color" content="#7952b3">


    <style>
      @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
      *{
        font-family: 'Noto Sans KR', sans-serif;
      }
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }
 
      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
<body>

 <div class="container">
           <div class="col-Lg-4"></div>
           <div class="col-Lg-4"></div>          
              <div class="jumbotron" style="padding-top: 20px;">
               	<form method="post" action="AdminLoginProc.jsp">
                <h3 style="text-align: center;">관리자 로그인</h3>
                <div class="form-group">
                <input type="text" class="form-control text-dark" placeholder="아이디" name="admin_id" maxlength="20">
                  </div>
                  <div class="form-group">
                <input type="password" class="form-control text-dark" placeholder="비밀번호" name="admin_passwd" maxlength="20">
                  </div>
                   <input type="submit" class="btn btn-primary form-control text-light" value="로그인">
                  </form>
              </div>               
          </div>       
   <div class="col-Lg-4"></div>
     <script src="https://code.jquery.com-3.1.1.min.js"></script>
     <script src="static/js/bootstrap.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

	
</body>
</html>