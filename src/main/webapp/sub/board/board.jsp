<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@page import="java.util.*"%>
<%@page import="board.*"%>

<% 
	BoardDTO vo = new BoardDTO();
	BoardDAO boardDAO = new BoardDAO();
	List<BoardDTO> boardList = boardDAO.getBoardList(vo);
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <link rel="stylesheet" type="text/css" href="../../static/css/board.css">
    <title>형스토어</title>
</head>

<body>

    <div class="super_container">

        <!-- Header -->

        <header>
            <%@ include file="../../Top.jsp" %>
        </header>

        <section class="notice">
            <div class="page-title">
                <div class="container">
                    <br />
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
                                    <option value="title" class="blind">제목</option>
                                </select>
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
                                <% for (BoardDTO board : boardList) { %>
                            <tr>
                                <td>
                                    <%=board.getNumber()%>
                                </td>
                                <td align="left"><a href="getBoard.jsp?number=<%=board.getNumber()%>">
                                        <%=board.getTitle()%>
                                    </a></td>
                                <td>
                                    <%=board.getWriter()%>
                                </td>
                                <td>
                                    <%=board.getRegDate()%>
                                </td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                    <br />

                    <% String mem_id1=(String)session.getAttribute("idKey"); if(mem_id1==null) { out.println("<a href='../user/Login.jsp' type='button' class='btn btn-dark pull-right'>글쓰기</a>");
                        }
                        else {
                        out.println("<a href='insertBoard.jsp' type='button' class='btn btn-dark pull-right'>글쓰기</a>");
                        }
                    %>
                </div>
            </div>

        </section>

    </div>
    <br /><br /><br />

    <!-- Footer -->

    <footer>
        <%@ include file="../../Bottom.jsp" %>
    </footer>


</body>

</html>