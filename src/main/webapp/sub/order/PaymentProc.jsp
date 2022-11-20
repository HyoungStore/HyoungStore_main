<%@ page contentType="text/html;charset=UTF-8" %>

<% 
request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="payMgr" class="payment.PaymentMgr" />
<jsp:useBean id="pay" class="payment.PaymentBean" />
<jsp:setProperty name="pay" property="*" />
<%
	boolean result = payMgr.insertPayment(pay);
	
	if(result){
%>
	  <script>
	    alert("주문처리 하였습니다");
		location.href="CartList.jsp";
	  </script>
<%	}else{%>
	  <script>
	    alert("오류가 발생하였습니다.");
		location.href="CartList.jsp";
	  </script>
<%	}%>