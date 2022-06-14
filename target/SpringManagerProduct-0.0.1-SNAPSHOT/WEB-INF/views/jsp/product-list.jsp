<!DOCTYPE html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<html lang="en" >
<head>
    <title>Product management</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <!--    // Sử dụng DNS Prefetch-->
    <link rel="dns-prefetch" href="https://fonts.googleapis.com">
    <!--    // Sử dụng Preconnect-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <div class="table-title">
        <div class="row">
            <div class="col-sm-5">
                <h1>List of products</h1>
            </div>
            <div class="col-sm-7">
                <a href="/create" class="btn btn-outline-light"><i class="fa fa-plus-square-o"
                                                                            aria-hidden="true"></i> <span>Add New Product</span></a>

            </div>
        </div>
    </div>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>#</th>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th colspan="2">Action</th>
        </tr>
        </thead>
        <tbody>
        <tr >
        
<c:forEach items="${products}" var="pd">

            <td class="text-center" th:text="${pd.id}"></td>
            <td class="text-center" th:text="${pd.name}"></td>
            <td  class="text-center" th:text="${pd.price}"></td>
            <td  class=" text-center" th:text="${pd.quantity}"></td>
            <td class="text-center">
                <a class="btn btn-outline-secondary" title="Edit" data-toggle="tooltip"  th:href="@{/edit-product/__${pd.id()}__}">
                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                </a>
            </td>
            <td class="text-center">
                <a class="btn btn-outline-danger" title="Delete" data-toggle="tooltip" th:href="@{delete-product/__${pd.id()}__}">
                    <i class="fa fa-ban" aria-hidden="true"></i>
                </a>
            </td>
</c:forEach>
            
        </tr>
        </tbody>
    </table>
</div>



</body>
</html>