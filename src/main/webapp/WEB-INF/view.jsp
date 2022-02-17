<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Save Travel</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	<div class="container my-5">
		<a href="/expenses" class="btn btn-primary btn-sm float-end">Go back</a>
		<h1>Expense Report</h1>
		<table class="table border rounded m-4">
			<tr>
				<td>Expense Name:
				<td><c:out value="${ expense.name }"></c:out></td>
			</tr>
			<tr>
				<td>Expense Description:</td>
				<td><c:out value="${ expense.description }"></c:out></td>
			</tr>
			<tr>
				<td>Vendor:</td>
				<td><c:out value="${ expense.vendor }"></c:out></td>
			</tr>
			<tr>
				<td>Amount Spent:</td>
				<td>$<c:out value="${ String.format('%,.2f', expense.amount) }"></c:out></td>
		</table>
	</div>
</body>
</html>