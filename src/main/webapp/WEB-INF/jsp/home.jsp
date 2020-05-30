<%--
  Created by IntelliJ IDEA.
  User: mande
  Date: 5/29/2020
  Time: 8:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<html>
<head>
    <title>Home Page</title>
    <meta charset="utf-8">
<%--    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">--%>
<%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">--%>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>--%>
<%--    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>--%>
<%--    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>--%>
    <style>
        h2 {
            width: 100%;
            text-align: center;
            border-bottom: 1px solid rgb(0, 152, 254);
            line-height: 0.1em;
            margin: 10px 0 20px;
            color: forestgreen;
        }

        h2 span {
            background:#fff;
            padding:0 10px;
        }
    </style>
</head>

<body>

<div class="container">
        <div>
            <img src="banner.gif" alt = "banner" style="width: 100%; height: 300px"/><div><br></div>
        </div>
    <h2><span>All Categories</span></h2><br>
    <div class="row">
       <c:forEach var = "book" items="${allBooks}" >
           <div class="col-md-6 col-lg-4 col-xl-3">
               <img src="<c:url value="${book.bookId}.png" />" alt="image"
                    style="width:100%; max-height: 220px"/>
               <h3 align="center">${book.bookName}</h3>
               <h5 align="center">Author: ${book.bookAuthor}</h5>
               <h5 align="center">Price: ${book.bookPrice}</h5>
               <p align="center"><a href="#" class="btn btn-success">Add to Cart&raquo;</a></p>
               <hr>
           </div>
       </c:forEach>


    </div>

    <hr>

    <%@include file="/WEB-INF/views/template/footer.jsp" %>
</div>
</body>
</html>
