<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="board.*"%>
<%@ page import="java.util.ArrayList"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../../static/css/board.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
<div class="super_container">
<header>
<%@ include file="../../Top.jsp" %>
</header>
	
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {//주어진 userID에 연결된 속성값을 얻어낸다.
		userID = (String) session.getAttribute("userID");
	}
	if (request.getParameter("searchField") == "0" || request.getParameter("searchText") == null
			|| request.getParameter("searchField").equals("0")
			|| request.getParameter("searchText").equals("")) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}

	%>
	
	<%
		BoardDAO board = new BoardDAO();
	%>
	
	<section class="notice">
		  <div class="page-title">
		        <div class="container">
		        <br/>
		            <h3><b>게시판</b></h3>
		        </div>
		    </div>
		
		    <!-- board seach area -->
		    <div id="board-search">
		        <div class="container">
		            <div class="search-window">
		                 <form method="post" name="search" action="searchbbs.jsp">
		                    <div class="search-wrap">
		                        <label for="search" class="blind">내용 검색</label>
                				<select class="search-option" name="searchField" class="blind">
                				<option value="title" class="blind">제목</option></select>
		                        <input id="search" type="search" name="searchText" placeholder="검색어를 입력해주세요." value="">
		                        <button type="submit" class="btn btn-dark">검색</button>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </div>
		   
		  <!-- board list area -->
		    <div id="board-list">
		        <div class="container">
		            <table class="board-table">
		                <thead>
		                <tr>
		                    <th scope="col" class="th-num">번호</th>
			                <th scope="col" class="th-title">제목</th>
			                <th scope="col" class="th-writer">글쓴이</th>
			                <th scope="col" class="th-date">작성일</th>
		                </tr>
		                </thead>
		                <tbody>
		                <tr>
					<%
						BoardDAO boardDAO = new BoardDAO();
						ArrayList<BoardDTO> list = boardDAO.getSearch(request.getParameter("searchField"),
								request.getParameter("searchText"));
						if (list.size() == 0) {
							PrintWriter script = response.getWriter();
							script.println("<script>");
							script.println("alert('검색결과가 없습니다.')");
							script.println("history.back()");
							script.println("</script>");
						}
						for (int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%=list.get(i).getNumber()%></td>
						<%--현재 게시글에 대한 정보 --%>
						<td><a href="getBoard.jsp?number=<%=list.get(i).getNumber()%>"><%=list.get(i).getTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;")
						.replaceAll(">", "&gt;").replaceAll("\n", "<br>")%></a></td>
						<td><%=list.get(i).getWriter()%></td>
						<td><%=list.get(i).getRegDate().substring(0, 11) + list.get(i).getRegDate().substring(11, 13) + "시"
						+ list.get(i).getRegDate().substring(14, 16) + "분"%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			 <br />

          <% String mem_id1=(String)session.getAttribute("idKey"); if(mem_id1==null) { 
        	  out.println("<a href='../user/Login.jsp' type='button' class='btn btn-dark pull-right'>글쓰기</a>");;
            }
            else {
            out.println("<a href='insertBoard.jsp' type='button' class='btn btn-dark pull-right'>글쓰기</a>");
            }
            %>
        </div>

      </div>

    </section>

</div>
	<footer>
			<%@ include file="../../Bottom.jsp" %>
	</footer>

	<script src="../../static/js/jquery-3.2.1.min.js"></script>
	<script src="../../static/js/categories_custom.js"></script>
</body>
</html>