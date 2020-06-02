<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edit Product</h1><hr>

            <p class="lead">Fill the below information to edit a product:</p>
        </div>
        <div class="col-md-8">
            <form method="post" action="/admin/editProduct/${bookId}" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="bookName">Enter Book Name: </label>
                    <input type="text" class="form-control" id="bookName" name="bookName" required value="${bookName}">
                </div>
                <div class="form-group">
                    <label for="bookAuthor">Enter Book Author</label>
                    <input type="text" class="form-control" id="bookAuthor" name="bookAuthor" required value="${bookAuthor}">
                </div>
                <div class="form-group">
                    <label for="bookPrice">Enter Book Price</label>
                    <input type="text" class="form-control" id="bookPrice" name="bookPrice" required value="${bookPrice}">
                </div>
                <div class="form-group">
                    <label for="desc">Enter Book Description</label>
                    <textarea class="form-control" id="desc" rows="2" name="bookDescription">${bookDescription}</textarea>
                </div>
                <div class="form-group">
                    <label for="image">Enter Book Image</label><br>
                    <span>Currently: ${bookId}.png</span>
                    <input type="file" class="form-control-file" id="image" name="bookImage">
                </div>
                <input class="btn btn-primary" type="submit" value="Edit Book">
            </form>
        </div>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
    </div>
</div>
</body>
</html>

