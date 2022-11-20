<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>게시글 작성</title>
    <link rel="stylesheet" href="../../static/css/boardinsert.css">
    <!--제이쿼리 효과-->
    <script src="../../static/js/boardinsert.js"></script>


</head>

<body>
    <header>
        <%@ include file="../../Top.jsp" %>
    </header>
    <article class="board-sec">

        <div class="box">

            <h3>글 작성하기</h3>


            <form method="post" action="insertBoard_proc.jsp">

                <ul>
                    <li>
                        <select>
                            <option selected disabled> 카테고리 </option>
                            <option>리뷰</option>
                            <option>고객의 소리</option>
                        </select>
                    </li>
                    <li>
                        <input type="text" class="rag-title" name="title" placeholder="제목을 입력하세요">
                    </li>
                    <li>
                        <input type="text" class="rag-title" name="writer" placeholder="작성자 이름을 입력하세요">
                    </li>
                    <li>
                        <textarea rows="12" class="rag-post" placeholder="내용을 입력하세요" name="content"></textarea>
                    </li>
                </ul>


                <div class="flex-box">
                    <button class="btn-default"><a href="board.jsp" style="color: black">돌아가기</a></button>
                    <button class="btn-rank2" type="submit">등록하기</button>
                </div>
            </form>
        </div>
    </article>
</body>

</html>