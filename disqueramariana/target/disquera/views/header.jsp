<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="assets/css/estilos.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Document</title>
</head>
<body>
    <section id="contenedor">
        <nav class="barra">
            <ul>
        
                <li><a href="#">Artista </a>
                    <ul class="minibarra">
                        <li><a href="views/RegistrarArtista.jsp">Registrar Artista</a></li>
                        <li><a href="views/EditarArtista.jsp">Registrar Artista</a></li>
                        <li><a href="views/EliminarArtista.jsp">Emiminar Artista</a></li>
                    </ul>
                </li>
                
                <li><a href=""> Album </a>
                    <ul class="minibarra">
                        <li><a href="../Album/CrearAlbum.jsp">Crear Album</a></li>
                        <li><a href="../Album/EditarAlbum.jsp">Editar Album</a></li>
                        <li><a href="../Album/EliminarAlbum.jsp">Eliminar Album</a></li>
                    </ul>
                </li>
        
                <li><a href="#"> Cancion </a>
                    <ul class="minibarra">
                        <li><a href="../Cancion/CrearCancion.jsp">Crear Canción</a></li>
                        <li><a href="../Cancion/EditarCancion.jsp">Editar Canción</a></li>
                        <li><a href="../Cancion/EliminarCancion.jsp">Eliminar Canción</a></li>
                    </ul>
                </li>
        
        
                <li><a href="#"> Genero </a>
                    <ul class="minibarra">
                        <li><a href="genero?action=registrar">Registrar Genero</a></li>
                        <li><a href="genero?action=editar">Editar Genero</a></li>
                        <li><a href="genero?action=listar">Consultar Genero</a></li>
                        <li><a href="genero?action=eliminar">Eliminar Genero</a></li>
                    </ul>
                </li>
    
                <li><a href="index.jsp"> Principal </a></li>
        
            </ul>
        </nav>
</body>
</html>