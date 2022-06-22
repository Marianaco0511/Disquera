<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file = "../header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="assets/css/estilos.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<title>Consultar Genero</title>

	
</head>
<body>

<section id="contenedor">
	<header class="container-fluid">

	<div class="row align-items-center he" >

		<div class="logo col-12 col-md-10">
		    <img src="assets/imagenes/fondo.jpg" class="img-responsive">
		</div>


	</div>	
	</header>

    <div class="table-responsive">
        <table class="table-hover " class="biu">
            <tr>
                <th>Id</th>
                <th>Nombre Genero</th>
                <th>Estado</th>
            </tr>
            <c:forEach var="generoL" items="${generoList}"></c:forEach>
            <tr>
                <td>${generoL.getIdgenero()}</td>
                <td>${generoL.getNombreg()}</td>
                <c:if test="${generoL.getEstadog()  == true}"></c:if>
                <td><span>Activo</span></td>
            </c:if>
            <c:if test="${generoL.getEstadogenero()  == false}">
                <td><span>Inactivo</span></td> 
            </c:if>   
            <c:if test="${album.getEstadoAlbum() == true}">
                <td>
                    <a href="genero?accion=estado&id=${genero.getIdgenero()}&estado=false"><button class="button" type="button">Inactivar</button> </a> 
                </td> 
            </c:if>
            <c:if test="${genero.getEstado() == false}">
                <td>
                    <a href="genero?accion=estado&id=${genero.getIdgenero()}&estado=true"><button class="button" type="button">Activar</button> </a>
                </td> 
            </c:if>
            <td>
                <a href="genero?accion=Editar&id=${genero.getIdgenero()}"><button class="button" type="button">Editar</button> </a>
                <a href="genero?accion=eliminar&id=${genero.getIdgenero()}"><button class="button" type="button">Eliminar</button> </a>
            </td>
        </tr>
    </c:forEach>    
</table>
</div>

    <footer id="just">
        <div class="copy">
            <p>Copy Right Mariana Castiblanco Oliveros</p>
        </div>
    </footer>
    </section>
    
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    
    </body>
    </html>