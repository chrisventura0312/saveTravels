<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Expense Tracker</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
    <div class="container mt-5">
        <div id="table">
            <table class="table table-bordered table-striped table-hover">
                <thead class="thead-dark">
                    <tr>
                        <th>Expense Name</th>
                        <th>Vendor</th>
                        <th>Amount</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${expenses}" var="expense">
                        <tr>
                             <td><a href="/expenses/${expense.id}">${expense.name}</a></td>
                            <td><c:out value="${expense.vendor}" /></td>
                            <td><fmt:formatNumber value="${expense.amount}" type="currency" currencyCode="USD" /></td>
                            <td>
                                <a href="/expenses/edit/${expense.id}" class="btn btn-primary">Edit</a>
                                <form action="/expenses/${expense.id}" method="post" style="display: inline;">
                                    <input type="hidden" name="_method" value="delete">
                                    <input type="submit" value="Delete" class="btn btn-danger">
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div id="form">
            <div class="form-container">
                <h2>Add a New Expense</h2>
                <form:form modelAttribute="expense" method="post" action="/create">
                    <div class="form-group">
                        <form:label path="name" class="font-weight-bold">Expense Name</form:label>
                        <form:errors path="name" class="text-danger" />
                        <form:input path="name" class="form-control" placeholder="Expense Name" />
                    </div>
                    <div class="form-group">
                        <form:label path="vendor" class="font-weight-bold">Vendor</form:label>
                        <form:errors path="vendor" class="text-danger" />
                        <form:input path="vendor" class="form-control" placeholder="Vendor" />
                    </div>
                    <div class="form-group">
                        <form:label path="amount" class="font-weight-bold">Amount</form:label>
                        <form:errors path="amount" class="text-danger" />
                        <form:input path="amount" class="form-control" placeholder="Amount" />
                    </div>
                    <div class="form-group">
                        <form:label path="description" class="font-weight-bold">Description</form:label>
                        <form:errors path="description" class="text-danger" />
                        <form:textarea path="description" class="form-control" placeholder="Description" rows="3" />
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
