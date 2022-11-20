<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.*, order.*" %>
<jsp:useBean id="cartMgr" class="product.CartMgr" scope="session"/>
<jsp:useBean id="orderMgr" class="order.OrderMgr" />
<jsp:useBean id="proMgr" class="product.ProductMgr" />
<%
	Hashtable hCart = cartMgr.getCartList();
	Enumeration hCartKey=hCart.keys();
	if(hCart.size() !=0){
		while(hCartKey.hasMoreElements()) {
		OrderBean order = (OrderBean)hCart.get(hCartKey.nextElement());
		orderMgr.insertOrder(order);
		proMgr.reduceProduct(order);		
		cartMgr.deleteCart(order);
		}
%>
	<script>
	   location.href="Payment.jsp";
	</script>
<%}else{ %>
	<script>
		alert("장바구니가 비어있습니다.");
		location.href="OrderList.jsp";
	</script>
<%}%>

