<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Expense Details</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header">
                <h2>Expense Details</h2>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <th>Expense Name</th>
                            <td>${expense.name}</td>
                        </tr>
                        <tr>
                            <th>Vendor</th>
                            <td>${expense.vendor}</td>
                        </tr>
                        <tr>
                            <th>Amount</th>
                            <td>${expense.amount}</td>
                        </tr>
                        <tr>
                            <th>Description</th>
                            <td>${expense.description}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="card-footer">
                <a href="/" class="btn btn-primary">Back to Expenses</a>
            </div>
        </div>
    </div>
</body>
</html>
