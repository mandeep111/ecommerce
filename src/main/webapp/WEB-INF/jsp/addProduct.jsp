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

        <form method="post" action="/admin/addProduct" enctype="multipart/form-data">
            Enter Book Name: <input type="text" name="bookName" required><br><br>
            Enter Book Price: <input type="text" name="bookPrice" required><br><br>
            Enter Book Author: <input type="text" name="bookAuthor" required><br><br>
            Enter Book Description: <input type="text" name="bookDescription" required><br><br>
            Enter Book Image: <input type="file" name="bookImage" class="form:input-large" ><br><br>
            <input type="submit" value="Add Book">
        </form>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
    </div>

</div>



</body>

</html>

