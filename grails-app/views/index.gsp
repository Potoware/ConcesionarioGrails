<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Concesionario Grails</title>
</head>
<body>
<content tag="nav">
<%@ include file="comunes/navbar.gsp" %>
</content>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicadores -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Imágenes del carrusel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <asset:image src="carrusel/c1.jpg" class="carousel-img"/>
      <div class="carousel-caption">
        <h3>0 Kilometros</h3>
        <p>Coches nuevos</p>
      </div>
    </div>
    <div class="carousel-item">
      <asset:image src="carrusel/c2.jpg" class="carousel-img"/>
      <div class="carousel-caption">
        <h3>Led</h3>
        <p>Tecnologia de punta</p>
      </div>
    </div>
    <div class="carousel-item">
      <asset:image src="carrusel/c3.jpg" class="carousel-img"/>
      <div class="carousel-caption">
        <h3>Confiable</h3>
        <p>Garantia extendida</p>
      </div>
    </div>
  </div>

  <!-- Controles de navegación -->
  <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Anterior</span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Siguiente</span>
  </a>
</div>

</body>
</html>
