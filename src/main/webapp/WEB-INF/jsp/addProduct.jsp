<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
 <title>Add New Product</title>
</head>
<body>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Add Product</h1><hr>

            <p class="lead">Fill the below information to add a product:</p>
        </div>

        <div class="col-md-8">
            <form method="post" action="/admin/addProduct" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="bookName">Enter Book Name: </label>
                    <input type="text" class="form-control" id="bookName" name="bookName" required>
                </div>
                <div class="form-group">
                    <label for="bookAuthor">Enter Book Author</label>
                    <input type="text" class="form-control" id="bookAuthor" name="bookAuthor" required>
                </div>
                <div class="form-group">
                    <label for="bookPrice">Enter Book Price</label>
                    <input type="text" class="form-control" id="bookPrice" name="bookPrice" required>
                </div>

                <div class="form-group">
                    <label for="desc">Enter Book Description</label>
                    <textarea class="form-control" id="desc" rows="2" name="bookDescription"></textarea>
                </div>
                <div class="form-group">
                    <label for="image">Example file input</label>
                    <input type="file" class="form-control-file" id="image" name="bookImage">
                </div>
                <input class="btn btn-primary" type="submit" value="Add Book">
            </form>
        </div>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
    </div>

</div>



</body>

</html>

