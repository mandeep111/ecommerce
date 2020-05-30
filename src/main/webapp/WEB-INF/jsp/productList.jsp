<%--
  Created by IntelliJ IDEA.
  User: mande
  Date: 5/30/2020
  Time: 7:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<html>
<head>
    <title>All Product List</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.css">

    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.js"></script>


</head>
<body>
<script>
    $(document).ready(function(){
        let searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[5,10,15,20-1], [5,10,15,20, "All"]],
            "oSearch": {"sSearch": searchCondition}
        });
    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>All Products</h1>

            <p class="lead">Checkout all the awesome products available now!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Book Name</th>
                <th>Price</th>
                <th>Author</th>
                <th>Description</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${blist}" var="product">
                <tr>
                    <td><img src="<c:url value="${product.bookId}.png" />" alt="image"
                             style="width:100%; max-height: 80px"/></td>
                    <td>${product.bookName}</td>
                    <td>Rs. ${product.bookPrice}</td>
                    <td>${product.bookAuthor}</td>
                    <td>${product.bookDescription} USD</td>
                    <td>
                        <a class="close" aria-label="Close" href="<spring:url value="/" />">
                            <span aria-hidden="true">&times;</span>
                        </a>
                        <button type="button" class="fa fa-pen">
                            <span aria-hidden="true"></span>
                        </button>
                    </td>
<%--                    <a href="<spring:url value="/product/viewProduct/${product.bookId}" />"></a>--%>
                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
