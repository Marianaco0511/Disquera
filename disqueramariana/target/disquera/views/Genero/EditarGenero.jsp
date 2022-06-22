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

	<title>Editar Genero</title>

	
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

<main >
    <div id="nu">
                <form name="nu" method="post" action="url" role="form" class="form-horizontal">
    
                    <h1><img src="assets/imagenes/documento.png" class="col-12 col-md-6 col-lg-7">EDITAR GENERO </h1>
                    
                    <div class="form-group row">
                    <label for="idu" class="col-lg-5">Nombre del cantante</label>
                    <input type="text" name="idu" id="idu" class="col-lg-7">
                    </div>


                    <div class="form-group row">
                        <label for="documento" class="col-lg-5">Discográfica</label>
                        <input type="text" name="documento" id="documento" class="col-lg-7">
                    </div>


                    <div class="form-group row">
                        <input type="text" name="ndocumento" required="ndocumento" maxlength="20" placeholder="MAXIMO 20 CARACTERES">
                        <label for="genero">Genero </label>
                    </div>
    
                    
                    <div class="form-group row">
                    <input type="submit" name="bguardar" value="Guardar" class="botwo" class="col-lg-7">
                    </div>
                    <div class="form-group row">
                    <input type="submit" name="brestablecer" value="Restablecer" class="bblanco" class="col-lg-7">
                    </div>
                </form>
                
            </div>
    
    
    
    </main>

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