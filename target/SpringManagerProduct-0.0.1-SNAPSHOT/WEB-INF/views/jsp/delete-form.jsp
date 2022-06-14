<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <title>Suspension of customers</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="table-title mb-4">
        <div class="row">
            <div class="col-sm-6">
                <h1>Delete Product</h1>
            </div>
            <div class="col-sm-6">
                <a href="/" class="btn btn-outline-light"><i class="fa fa-list" aria-hidden="true"></i> <span>Product list</span></a>
            </div>
        </div>
    </div>
    <form id="frmSuspensionCustomer" th:action="@{/delete-product}" method="post" th:object="${product}">
        <fieldset class="row g-3">
            <div class="col-md-6">
                <label class="form-label">Product ID</label>
                <input type="text" readonly class="form-control" name="fullName" th:field="*{id}"
                       value="">
            </div>
            <div class="col-md-6">
                <label class="form-label">Product Name</label>
                <input type="text" readonly class="form-control" name="fullName" th:field="*{name}"
                       value="">
            </div>
            <div class="col-md-6">
                <label class="form-label">Quantity</label>
                <input type="number" readonly class="form-control" th:field="*{quantity}" value="">
            </div>
            <div class="col-md-6">
                <label class="form-label">Price</label>
                <input type="number" readonly class="form-control" th:field="*{price}" value="">
            </div>
            <div class="col-md-12">
                <button type="submit" id="btnSuspendedCustomer" class="btn btn-outline-danger">
                    <i class="fa fa-ban" aria-hidden="true"></i>
                    Delete
                </button>
            </div>
        </fieldset>
    </form>
</div>
<div class="footer">
    <div id="message-alert">

    </div>
</div>


<script type="text/javascript" src="/resources/js/custom-validation.js"></script>
<script type="text/javascript" src="/resources/js/app.js"></script>


</body>
</html>
