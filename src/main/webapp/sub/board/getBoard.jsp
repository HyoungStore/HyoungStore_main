<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="board.*"%>
<%@ page import="java.util.*, board.*" %>

<%
   // 1. 검색할 게시글 번호 추출
   String number = request.getParameter("number");

   // 2. DB 연동 처리
   BoardDTO vo = new BoardDTO();   
   vo.setNumber(Integer.parseInt(number));
   BoardDAO boardDAO = new BoardDAO();
   BoardDTO board = boardDAO.getBoard(vo);
 %>
<!DOCTYPE html>
<html>

<head>

    <title>게시글 수정</title>
    <link rel="stylesheet" href="../../static/css/boardinsert.css">
    <script src="../../static/js/boardinsert.js"></script>

</head>

<body>
    <header>
        <%@ include file="../../Top.jsp" %>
    </header>
    <article class="board-sec">

        <div class="box">

            <h3>게시글</h3>


            <form action="updateBoard_proc.jsp" method="post">
                <input name="number" type="hidden" value="<%=board.getNumber() %>" />
                <ul>
                    <li>
                        <select>
                            <option selected disabled> 카테고리 </option>
                            <option>리뷰</option>
                            <option>고객의 소리</option>
                        </select>
                    </li>
                    <% String mem_id1=(String)session.getAttribute("idKey"); if(mem_id1==null) { %>
                        <li>
                            <input type="text" class="rag-title" name="title" placeholder="제목을 입력하세요" value="<%= board.getTitle() %>" readonly>
                        </li>
                        <li>
                            <input type="text" class="rag-title" name="writer" placeholder="작성자 이름을 입력하세요" value="<%= board.getWriter() %>" readonly>
                        </li>
                        <li>
                            <textarea rows="12" class="rag-post" placeholder="내용을 입력하세요" name="content" readonly><%= board.getContent() %></textarea>
                        </li>
                </ul>
                <% } else { %>
                    <ul>
                        <li>
                            <input type="text" class="rag-title" name="title" placeholder="제목을 입력하세요" value="<%= board.getTitle() %>">
                        </li>
                        <li>
                            <input type="text" class="rag-title" name="writer" placeholder="작성자 이름을 입력하세요" value="<%= board.getWriter() %>">
                        </li>
                        <li>
                            <textarea rows="12" class="rag-post" placeholder="내용을 입력하세요" name="content"><%= board.getContent() %></textarea>
                        </li>
                    </ul>

                    <div class="flex-box">
                        <button type="submit" class="btn-default" style="color: black">수정하기</button>
                    </div>
            </form>
            <form action="deleteBoard.jsp" method="post"><input name="number" type="hidden" value="<%= board.getNumber() %>">
                <button type="submit" class="btn-rank2" type="submit">삭제하기</button>
            </form>
        </div>

        <% } %>
    </article>
</body>

</html>