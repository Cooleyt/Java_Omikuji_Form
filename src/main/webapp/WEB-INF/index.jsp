<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <title>Omikuji Form</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/app.js"></script>
</head>
<body>
	<div class = "container">
		<h1>Omikuji Form</h1>
		<form action="/sendInfo" method="post">
		
			<label for="num">Pick any number from 5 to 25</label><br />
				<input type="number" name="num"/><br />
			<label for="cityName">Enter the name of any city.</label><br />
				<input type="text" name="cityName"/><br />
			<label for="realPerson">Enter the name of any real person.</label><br />
				<input type="text" name="realPerson"/><br />
			<label for="endeavorHobby">Enter professional endeavor or hobby.</label><br />
				<input type="text" name="endeavorHobby"/><br />
			<label for="livingThing">Enter any type of living thing.</label><br />
				<input type="text" name="livingThing"/><br />
			<label for="kindNote">Say something nice to someone.</label><br />
				<textarea name="kindNote" cols="30" rows="10"></textarea><br />
				<p>Send and Show a friend</p><br />
		<input type="submit" value="Send"/>
	</form>
	</div>
</body>
</head>