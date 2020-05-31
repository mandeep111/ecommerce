<%--
  Created by IntelliJ IDEA.
  User: mande
  Date: 5/31/2020
  Time: 10:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<html>
<head>
    <title>Invoice Page</title>
</head>
<body>
<div class="container">
    <h2><u>Thank You for buying from us!</u></h2>
    <h5>The product information is as follows:</h5>
   <div class="col-md-8 jumbotron">
       <h5>Product Name: ${bookName}</h5>
       <h5>Product Author: ${bookAuthor}</h5>
       <h5>Product Price: ${bookPrice}</h5>
       <h5>Product Quantity: ${quantity}</h5>
       <h5>Total Price: ${totalPrice}</h5>
   </div>
</div>
</body>
</html>
