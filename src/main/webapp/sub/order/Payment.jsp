<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% 
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memMgr" class="user.MemberMgr" />
<jsp:useBean id="payMgr" class="payment.PaymentMgr" />
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Css Styles -->
    <link rel="stylesheet" href="../../static/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/style.css" type="text/css">
</head>

<body>
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-7">
                        <div class="header__top__left">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__links">
                            	<%
			                        String mem_id = (String)session.getAttribute("idKey");
			                        
			                        String log="";
			                        if(mem_id == null) log ="<a href=../user/Login.jsp> 로그인 </a>";
			                        else log = "<a href=../user/Logout.jsp> 로그아웃 </a>";
			                     
			                        String mem="";
			                        if(mem_id == null) mem ="<a href=../user/Register.jsp> 회원 등록 </a>";
			                        else mem = "<a href=../user/MemberUpdate.jsp> 회원정보 수정 </a>";
			                     %>
			                     &nbsp;
                                <a><%=log%></a>
                                <a><%=mem%></a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="header__logo">
                        <a href="Index.jsp"><img src="../../static/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <nav class="header__menu mobile-menu">
                        <ul>
                            <li><a href="../../Index.jsp">홈</a></li>
                            <li><a href="../product/ProductList.jsp">상품</a></li>  
                            <li><a href="../board/board.jsp">게시판</a></li>
                            <li><a href="../order/OrderList.jsp">주문내역</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3 col-md-3">
                    <div class="header__nav__option">
                        <a href="CartList.jsp"><img src="../../static/img/icon/cart.png" alt=""></a>
                    </div>
                </div>
            </div>
            <div class="canvas__open"><i class="fa fa-bars"></i></div>
        </div>
    </header>
    
    <!-- Header Section End -->

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__text">
                        <h4>Check Out</h4>
                        <div class="breadcrumb__links">
                            <a href="./index.html">Home</a>
                            <a href="./shop.html">Shop</a>
                            <span>Check Out</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="checkout__form">
                <form name="regForm" method="post" action="PaymentProc.jsp">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            
                            <h6 class="checkout__title">주문 정보</h6>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                    <tr>
                                        <td><select name="card_type" maxlength="20" rows="10">
										<option value="BC카드">BC카드
										<option value="하나카드">하나카드
										<option value="삼성카드">삼성카드
										<option value="KB카드">KB카드
										<option value="우리카드">우리카드
										<option value="NH카드">NH카드
										<option value="카카오뱅크">카카오뱅크
										<option value="현대카드">현대카드
										<option value="롯데카드">롯데카드</option></select></td>
                                    </tr>
                                    </div>
                                </div>    
                            </div>
                            <br/>
                            <p>카드번호</p>
                            <div class="row">
                                <div class="col-lg-3">
                                    <div class="checkout__input">  
                                        <input type="text" name="card_number" size ="4" value="">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="checkout__input">
                                        <input type="password" name="card_number" size ="4" value="">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="checkout__input">
                                        <input type="password" name="card_number" size ="4" value="">
                                    </div>
                                </div>
                                <div class="col-lg-3">
                                    <div class="checkout__input">
                                        <input type="text" name="card_number" size ="4" value="">
                                    </div>
                                </div>
                            </div>
                            <p>카드 유효기간</p>
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="checkout__input">  
                                        <input type="text" placeholder="Month" name="card_month" size ="2" value="">
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <div class="checkout__input">
                                         <input type="text" placeholder="Year" name="card_year" maxlength="4" value="">
                                    </div>
                                </div>
                                <div class="col-lg-2">
                                    <div class="checkout__input">
                                         <input type="password" placeholder="CVC" name="card_cvc" maxlength="3" value="">
                                    </div>
                                </div>
                            </div>
                            <p>카드 비밀번호</p>
                            <div class="checkout__input">
                                <input type="password" name="card_pwd"  size="4" value="">
                            </div>
                            <p>우편번호</p>
                            <div class="checkout__input">
                                <input type="text" name="address_number" id ="member_post" size ="10" value="">
                                <input type="button" value="우편번호찾기" id="1" readonly onclick="findAddr()" style="color:black;">
                            </div>
                            <p>주소</p>
                            <div class="checkout__input">
                                <input type="text" name="address" id ="member_addr" size="50" value="">
                            </div>
                            <p>상세 주소</p>
                            <div class="checkout__input">
                                <input type="text" name="address_detail"  size="50" value="">
                            </div>             
                            
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">  
                                <button type="submit" class="site-btn">결제하기</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
<footer>
	<%@ include file="../../Bottom.jsp" %>
</footer>
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>

</html>