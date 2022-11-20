<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="payment.*"%>
<%@ page import="product.*"%>
<%@ page import="java.util.ArrayList"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HyoungStore</title>

    <!-- Css Styles -->
    <link rel="stylesheet" href="../../static/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="../../static/css/style.css" type="text/css">
    <title>형스토어</title>
</head>

<body>
    <div class="super_container">
        <header>
            <%@ include file="../../Top.jsp" %>
        </header>

        <% String userID=null; 
           if (session.getAttribute("userID") !=null) {//주어진 ID에 연결된 속성값을 얻어낸다. userID=(String)
               session.getAttribute("userID"); } 
           if (request.getParameter("searchField")=="0" ||
               request.getParameter("searchText")==null || request.getParameter("searchField").equals("0") ||
               request.getParameter("searchText").equals("")) { 
        	       PrintWriter script=response.getWriter();
            	   script.println("<script>");
            	   script.println("alert('입력이 안 된 사항이 있습니다.')");
            	   script.println("history.back()");
            	   script.println("</script>");
               }
        %>

            <% ProductMgr board=new ProductMgr(); %>
                <section class="breadcrumb-option">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="breadcrumb__text">
                                    <h4>Shop</h4>
                                    <div class="breadcrumb__links">
                                        <a href="../../Index.html">Home</a>
                                        <span>Shop</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="shop spad">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="shop__sidebar">
                                    <div class="shop__sidebar__search">
                                        <form method="post" name="search" action="ProductSearch.jsp">
                                            <select class="search-option" name="searchField" value="name">
                                                <option value="0">제목</option>
                                                <option value="name">제목</option>
                                                <input type="text" placeholder="Search..." value="" id="search" name="searchText">
                                                <button type="submit"><span class="icon_search"></span></button>
                                        </form>
                                    </div>
                                    <div class="shop__sidebar__accordion">
                                        <div class="accordion" id="accordionExample">
                                            <div class="card">
                                                <div class="card-heading">
                                                    <a data-toggle="collapse" data-target="#collapseOne">Categories</a>
                                                </div>
                                                <div id="collapseOne" class="collapse show"
                                                    data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="shop__sidebar__categories">
                                                            <ul class="nice-scroll">
                                                                <li><a href="#">Men</a></li>
                                                                <li><a href="#">Women</a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="card">
                                                <div class="card-heading">
                                                    <a data-toggle="collapse" data-target="#collapseFour">Size</a>
                                                </div>
                                                <div id="collapseFour" class="collapse show"
                                                    data-parent="#accordionExample">
                                                    <div class="card-body">
                                                        <div class="shop__sidebar__size">
                                                            <label for="xs">xs
                                                                <input type="radio" id="xs">
                                                            </label>
                                                            <label for="sm">s
                                                                <input type="radio" id="sm">
                                                            </label>
                                                            <label for="md">m
                                                                <input type="radio" id="md">
                                                            </label>
                                                            <label for="xl">xl
                                                                <input type="radio" id="xl">
                                                            </label>
                                                            <label for="xxl">xxl
                                                                <input type="radio" id="xxl">
                                                            </label>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% ProductMgr ProductMgr=new ProductMgr(); ArrayList<product.ProductBean> list =
                                ProductMgr.getSearch(request.getParameter("searchField"),
                                request.getParameter("searchText"));
                                if (list.size() == 0) {
                                PrintWriter script = response.getWriter();
                                script.println("<script>");
                                    script.println("alert('검색결과가 없습니다.')");
                                    script.println("history.back()");
                                    script.println("</script>");
                                }
                                for (int i = 0; i < list.size(); i++) { %>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"><img
                                                    src="../../data/<%=list.get(i).getImage()%>"></div>
                                            <div class="product__item__text">
                                                <h6>
                                                    <%=list.get(i).getName()%>
                                                </h6>
                                                <a href="ProductDetail.jsp?no=<%=list.get(i).getNo()%>" class="add-cart">상세보기</a>
                                                <h5>
                                                    <%=list.get(i).getPrice()%>&nbsp;&#8361
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <%}%>
                        </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="product__pagination">
                                    <a class="active" href="#">1</a>
                                    <a href="#">2</a>
                                    <a href="#">3</a>
                                    <span>...</span>
                                </div>
                            </div>
                        </div>
                    </div>
    	</section>
    </div>
    
    <!-- Js Plugins -->
    <script src="../../static/js/jquery-3.3.1.min.js"></script>
    <script src="../../static/js/jquery.nice-select.min.js"></script>
    <script src="../../static/js/jquery.slicknav.js"></script>
    <script src="../../static/js/owl.carousel.min.js"></script>
    <script src="../../static/js/main.js"></script>
    <footer>
        <%@ include file="../../Bottom.jsp" %>
    </footer>
</body>

</html>