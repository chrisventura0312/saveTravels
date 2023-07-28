<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Expense Tracker</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div class="container mt-5">
        <div id="form">
            <div class="form-container">
                <h2>Edit Expense</h2>
                <form:form action="/expenses/edit/${expense.id}" method="post" modelAttribute="expense">
                    <input type="hidden" name="_method" value="put" />
                    <div class="form-group">
                        <form:label path="name" class="font-weight-bold">Expense Name</form:label>
                        <form:errors path="name" class="text-danger" />
                        <form:input path="name" class="form-control" placeholder="Expense Name" />
                    </div>
                    <div class="form-group">
                        <form:label path="vendor" class="font-weight-bold">Vendor</form:label>
                        <form:errors path="vendor" class="text-danger"/>
                        <form:input path="vendor" class="form-control" placeholder="Vendor" />
                    </div>
                    <div class="form-group">
                        <form:label path="amount" class="font-weight-bold">Amount</form:label>
                        <form:errors path="amount" class="text-danger"/>
                        <form:input path="amount" class="form-control" placeholder="Amount" />
                    </div>
                    <div class="form-group">
                        <form:label path="description" class="font-weight-bold">Description</form:label>
                        <form:errors path="description" class="text-danger"/>
                        <form:textarea path="description" class="form-control" placeholder="Description" rows="3" />
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
