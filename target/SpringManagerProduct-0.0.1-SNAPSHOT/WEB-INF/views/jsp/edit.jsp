<!DOCTYPE html>
<html lang="en"  xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Edit Product</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--    // Sử dụng DNS Prefetch-->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

</head>
<body>
    <div class="container">
        <div class="table-title mb-4">
            <div class="row">
                <div class="col-sm-6">
                    <h1>Update Product</h1>
                </div>
                <div class="col-sm-6">
                    <a href="/" class="btn btn-outline-light"><i class="fa fa-list" aria-hidden="true"></i> <span>Product list</span></a>
                </div>
            </div>
        </div>
        <form id="frmCreateCustomer" th:action="@{/edit-product}" method="post" th:object="${product}">
            <fieldset class="row g-3">
                <div class="col-md-6">
                    <label class="form-label">Product ID</label>
                    <input type="text" readonly class="form-control"  th:field="*{id}" value="">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Product Name</label>
                    <input type="text" class="form-control" id="fullName" name="fullName" th:field="*{name}" value="">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Quantity</label>
                    <input type="number" class="form-control"  th:field="*{quantity}"  value="">
                </div>
                <div class="col-md-6">
                    <label class="form-label">Price</label>
                    <input type="number" class="form-control"  th:field="*{price}"  value="">
                </div>
                <div class="col-md-12">
                    <button type="submit" id="btnCreateCustomer" class="btn btn-outline-primary">
                        <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                         Save Changes
                    </button>
                </div>
            </fieldset>
        </form>
    </div>
    <div class="footer">

    </div>

</body>
</html>
