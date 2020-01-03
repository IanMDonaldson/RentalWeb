<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/MenuBar.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Movie Rental Co. - List of Actors!</title>
<style>
<%@include file="/WEB-INF/css/MenuBar.css" %>
<%@include file="/WEB-INF/css/Actor.css" %>
</style>
</head>
<body>
<a href="javascript:history.back()" class="button">Return to Actor List</a>
<a href="WebActor?action=updateActorGET&id=${id }" class="button">Update Actor</a>
<a href="WebActor?action=deleteActorGET&id=${id }" class="button">Delete Actor</a><br><br>
	<div class="types">First Name: </div><div class="data">${firstName }</div><br>
	<div class="types">Last Name: </div><div class="data">${lastName }</div><br>
	<div class="types">Actor's ID: </div><div class="data">${id }</div><br>
	<div class="types">Films Played by Actor: </div>
		<div class="list">
			<c:forEach items="${actorsFilmList}" var="film">
				<a href="WebFilm?action=getFilm&id=${film.id}">${film.title }</a><br>
			</c:forEach>
		</div>
	
</body>
</html>