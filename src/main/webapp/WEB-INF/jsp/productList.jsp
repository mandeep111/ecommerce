<%--
  Created by IntelliJ IDEA.
  User: mande
  Date: 5/30/2020
  Time: 7:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>--%>
<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<html>
<head>
    <title>All Product List</title>

</head>
<body>
<script>
    $(document).ready(function(){
        let searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]],
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
                    <td><span class="glyphicon glyphicon-info-sign"></span></td>
<%--                    <a href="<spring:url value="/product/viewProduct/${product.bookId}" />"></a>--%>
                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
