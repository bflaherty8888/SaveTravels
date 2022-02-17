<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
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
	<div class="container my-4 w-75">
		<a href="/expenses" class="btn btn-primary btn-sm float-end">Go
			back</a>
		<h1>
			Edit <c:out value="${ expense.name }"></c:out>:
		</h1>
		<div class="mt-5 mx-auto">
			<form:form action="/expenses/${ expense.id }/update" method="post"
				modelAttribute="expense" class="form-control">
				<input type="hidden" name="_method" value="put">
				<p>
					<form:label path="name" class="form-label">Expense Name:</form:label>
					<form:input path="name" class="form-control" />
					<form:errors path="name"
						class="form-text alert alert-danger p-1 border-top-0" />
				</p>
				<p>
					<form:label path="vendor" class="form-label">Vendor:</form:label>
					<form:input path="vendor" class="form-control" />
					<form:errors path="vendor"
						class="form-text alert alert-danger p-1 border-top-0" />
				</p>
				<p>
					<form:label path="amount" class="form-label">Amount:</form:label>
					<form:input type="number" step="0.01" path="amount"
						class="form-control" />
					<form:errors path="amount"
						class="form-text alert alert-danger p-1 border-top-0" />
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