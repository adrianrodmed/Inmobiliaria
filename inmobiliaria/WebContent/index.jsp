
<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Inmobiliaria Sol11</title>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!-- Required meta tags -->
    	<meta charset="utf-8">
    	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   		<!-- Bootstrap CSS -->
    	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<style>
		table,th,td{text-align: center; margin: 10px auto; border:1px solid black;}
		</style>
	</head>
	<body style="text-align: center;">
	<header>
	<h2>Viviendas Madrid</h2>
	</header>
	<div class="container">
		<form class="form-inline" action="Buscar" method="get">
			<label class="my-1 mr-2" for="inlineFormCustomSelectPref">Preference</label>
			<select class="custom-select my-1 mr-sm-2"
				id="inlineFormCustomSelectPref" name="idzona">
				<option selected>Selecciona</option>
				<option value="1">Chamberí</option>
				<option value="2">Chueca</option>
				<option value="3">La Latina</option>
				<option value="4">Lavapies</option>
				<option value="5">San Blas</option>
				<option value="6">Vallecas</option>
			</select>
			<input type="submit" value="Buscar">
		</form>
	</div>

	<div class="container">
		<p>A continuación se muestran las viviendas disponibles en la zona
			seleccionada</p>
		<%
			String msg = (String) session.getAttribute("servletMsg");
			out.println(msg);
		%>
	</div>
	<!-- 	<table> -->
<!-- 			<tbody> -->
<!-- 				<tr><th>ID Zona</th><th>Direccion</th><th>Precio</th></tr> -->
<%-- 				<c:choose> --%>
<%-- 				  <c:when test="${vivienda.idzona = idzona}"> --%>
<%-- 					<c:forEach items="${vivienda}" var="casa"> --%>
<%-- 					  <tr><td style="width: 10%"><c:out value="${casa.idzona}"></c:out></td> --%>
<%-- 					  <td style="width: 60%"><c:out value="${casa.direccion}"></c:out></td> --%>
<%-- 					  <td style="width: 20%"><c:out value="${casa.precio}"></c:out></td> --%>
<!-- 					  </tr> -->
<%-- 					</c:forEach> --%>
<%-- 				  </c:when> --%>
<%-- 				  <c:otherwise> --%>
<%-- 				  	<tr><td><c:out value="${'No hay viviendas disponibles en esta zona'}"></c:out></td></tr> --%>
<%-- 				  </c:otherwise> --%>
<%-- 				</c:choose> --%>
<!-- 			</tbody> -->
<!-- 		</table> -->
		    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	</body>
</html>