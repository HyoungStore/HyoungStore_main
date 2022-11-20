<%@page import="board.*"%>
<%@page contentType="text/html; charset=UTF-8"%>

<%
	// 1. 사용자 입력 정보 추출
	request.setCharacterEncoding("UTF-8");
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String number = request.getParameter("number");
	String writer = request.getParameter("writer");

	// 2. DB 연동 처리
	BoardDTO vo = new BoardDTO();
	vo.setTitle(title);
	vo.setContent(content);
	vo.setNumber(Integer.parseInt(number));
	vo.setWriter(writer);
	BoardDAO boardDAO = new BoardDAO();
	boardDAO.updateBoard(vo);

	// 3. 화면 네비게이션
	response.sendRedirect("board.jsp");
%>