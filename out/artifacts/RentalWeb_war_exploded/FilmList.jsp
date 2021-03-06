<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <jsp:include page="MenuBar.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Rental Co. - List of Films</title>
	<link rel="stylesheet" href="css/MenuBar.css"/>
	<link rel="stylesheet" href="css/FilmList.css"/>
</head>
<body>
<h1>List of Films</h1>
<p>
	<c:forEach items="${sessionScope.filmList}" var="current">
		<div id="FilmActions">
			<a href="WebFilm?action=getFilm&id=${current.id}" id="name">${current.title}</a>
		</div><br>
	</c:forEach>
</body>
</html>