<%--
  Created by IntelliJ IDEA.
  User: mande
  Date: 5/30/2020
  Time: 7:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Page</title>
</head>
<body>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<div class="container">
    <div class="jumbotron">
        <h3><a href="/admin/addProduct">Add Product</a> </h3>
        <span>Add new products from here.</span>
    </div>
    <div class="jumbotron">
        <h3><a href="/admin/productList">View All Products</a> </h3>
        <span>View all the products from here.</span>
    </div>
</div>

</body>
</html>
