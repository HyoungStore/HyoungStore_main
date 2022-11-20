<%@page import="board.*"%>
<%@page contentType="text/html; charset=UTF-8"%>

<%
	// 1. 사용자 입력 정보 추출
	String number = request.getParameter("number");

	// 2. DB 연동 처리
	BoardDTO vo = new BoardDTO();
	vo.setNumber(Integer.parseInt(number));
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.deleteBoard(vo);

	// 3. 화면 네비게이션
	response.sendRedirect("board.jsp");
%>