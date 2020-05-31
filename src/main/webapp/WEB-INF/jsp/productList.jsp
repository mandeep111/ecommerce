<%--
  Created by IntelliJ IDEA.
  User: mande
  Date: 5/30/2020
  Time: 7:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            "lengthMenu": [[5,10,15,20,-1], [5,10,15,20, "All"]],
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
            <c:forEach var="product" items="${blist}">
                <tr>
                    <td><img src="${pageContext.request.contextPath}/${product.bookId}.png" alt="image"
                             style="width:150px; max-height: 100px"/></td>
                    <td>${product.bookName}</td>
                    <td>Rs. ${product.bookPrice}</td>
                    <td>${product.bookAuthor}</td>
                    <td>${product.bookDescription}</td>
                    <td>
                        <button type="button" onclick="deleteProduct(${product.bookId})" aria-label="Close" class="close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <a class="fa fa-pen" href="${pageContext.request.contextPath}/admin/editProduct/${product.bookId}">
                            <span aria-hidden="true"></span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>

        <script type="text/javascript">
            function deleteProduct(bookId) {
                let message = confirm("Delete this product?");
                if (message == true) {
                    window.location = "${pageContext.request.contextPath}/admin/deleteProduct/"+bookId;
                }
            }
        </script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
</body>
</html>
