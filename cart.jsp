<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${not empty cart}">
		<h1>📚📓🛒</h1>
		<hr>
		<c:forEach var="book" items="${cart}" varStatus="status">
			${status.count}: ${book.value.name} - AUD ${book.value.price}
			<br>
			<c:set var="totalPrice" value="${totalPrice + book.value.price}" />
		</c:forEach>
		<hr>
		Woohoo, your cart's total price: AUD ${totalPrice}
	</c:if>

	<c:if test="${empty cart}">
		<h2>Empty Cart</h2>
	</c:if>
	<br>
	<br>
	<a href="home">Back to Home Page</a>
</body>
</html>