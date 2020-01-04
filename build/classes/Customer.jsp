<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <jsp:include page="/WEB-INF/MenuBar.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Rental Co. - Customer List</title>
<style>
	<%@include file="/WEB-INF/css/MenuBar.css" %>
</style>
</head>
<body>
<p>
Customer: ${customer.firstName} ${customer.lastName} <br>
ID: ${customer.ID} <br>
Email: ${customer.email} <br>
Address ID: ${customer.addressID}<br>
Store ID: ${customer.storeID} <br>
Last Update: $<fmt:formatDate pattern="MM/dd/yyyy" value="${customer.lastUpdate}"/><br>
Customer Creation Date: $<fmt:formatDate pattern="MM/dd/yyyy" value="${customer.createDate}"/><br>
</p>
<a href="WebCustomer?action=getAllCustomers">Return to Customer List</a>
<a href="Menu">Return to Main Menu</a>
</body>
</html>