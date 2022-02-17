<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
	<div class="container my-4">
		<h1>Save Travels</h1>
		<table class="table table-striped table-hover border rounded align-middle">
			<tr>
				<th>Expense</th>
				<th class="text-center">Vendor</th>
				<th class="text-end">Amount</th>
				<th class="text-center">Actions</th>
			</tr>
			<c:forEach var="expense" items="${ expenses }">
				<tr class="position-relative">
					<td><c:out value="${ expense.name }"></c:out></td>
					<td class="text-center"><c:out value="${ expense.vendor }"></c:out></td>
					<td class="text-end">$<c:out
							value="${ String.format('%,.2f', expense.amount) }"></c:out></td>
					<td class="text-center">
						<div class="btn-group">
							<a href="/expenses/${ expense.id }" class="btn btn-warning p-1 my-0">View</a>
							<a href="/expenses/${ expense.id }/edit" class="btn btn-primary p-1 my-0">Edit</a>
							<form action="/expenses/${ expense.id }/delete" method="post" class="btn btn-danger p-0 my-0">
								<input type="hidden" name="_method" value="delete">
								<input type="submit" value="Delete" class="btn-danger p-1 m-0 border-0">
							</form>
						</div>
					</td>
				</tr>
			</c:forEach>
		</table>
		<div class="w-75 mt-5 mx-auto">
			<h2>Add an expense:</h2>
			<form:form action="/expenses/create" method="post"
				modelAttribute="expense" class="form-control">
				<p>
					<form:label path="name" class="form-label">Expense Name:</form:label>
					<form:input path="name" class="form-control" />
					<form:errors path="name" class="form-text alert alert-danger p-1 border-top-0" />
				</p>
				<p>
					<form:label path="vendor" class="form-label">Vendor:</form:label>
					<form:input path="vendor" class="form-control" />
					<form:errors path="vendor" class="form-text alert alert-danger p-1 border-top-0" />
				</p>
				<p>
					<form:label path="amount" class="form-label">Amount:</form:label>
					<form:input type="number" step="0.01" path="amount"
						class="form-control" />
					<form:errors path="amount" class="form-text alert alert-danger p-1 border-top-0" />
				</p>
				<p>
					<form:label path="description" class="form-label">Description:</form:label>
					<form:textarea path="description" class="form-control" />
					<form:errors path="description"
						class="form-text alert alert-danger p-1 border-top-0" />
				</p>
				<input type="submit" value="Submit"
					class="form-control btn btn-primary" />
			</form:form>
		</div>
	</div>
</body>
</html>