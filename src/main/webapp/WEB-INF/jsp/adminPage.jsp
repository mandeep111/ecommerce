<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mande
  Date: 5/30/2020
  Time: 7:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<html>
<head>
    <title>Admin Page</title>
</head>
<body>

<div class="container">
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>
            Welcome: ${pageContext.request.userPrincipal.name} |
            <a href="<c:url value="/j_spring_security_logout"/>">Logout</a>
        </h2>

    </c:if>

    <div class="row">

        <div class="jumbotron col-md-5">
            <h3><a href="/admin/addProduct">Add Product</a></h3>
            <span>Add new products from here.</span>
        </div><div class="col-md-2"></div>
        <div class="jumbotron col-md-5">
            <h3><a href="/admin/productList">View All Products</a></h3>
            <span>View all the products from here.</span>
        </div>

    </div>
</div>

</body>
</html>
