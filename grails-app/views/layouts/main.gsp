<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<nav class="navbar navbar-expand-md navbar-dark navbar-static-top" role="navigation" style="background-color: #072146;">
    <a class="navbar-brand" href="/#"><asset:image src="coche.png" width="50" height="50" alt="Concesionario Logo"/></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent" aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">Concesionario Grails</a>

    <div class="collapse navbar-collapse" aria-expanded="false" style="height: 0.2px;" id="navbarContent">
        <ul class="nav navbar-nav ml-auto">
            <g:pageProperty name="page.nav"/>
        </ul>
    </div>

    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Personas<span class="caret"></span></a>
        <ul class="dropdown-menu"> 
            <li class="nav-controller"><g:link controller="Cliente">Clientes</g:link></li>
            <li class="nav-controller"><g:link controller="Vendedor">Vendedores</g:link></li>
        </ul>
    </li>
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Operacion <span class="caret"></span></a>
        <ul class="dropdown-menu">
            <li class="nav-controller"><g:link controller="Vehiculo">Vehiculos</g:link></li>
            <li class="nav-controller"><g:link controller="Inventario">Ventas</g:link></li>
        </ul>
    </li>

</nav>

<g:layoutBody/>

<div class="footer row" role="contentinfo" style="background-color: #072146;">
    <div class="col center" style="display: flex; align-items: center; justify-content: center;">
        <strong class="centered">&reg;Concesionario Grails</strong>
    </div>
</div>


<div id="spinner" class="spinner" style="display:none;">
    <g:message code="spinner.alt" default="Loading&hellip;"/>
</div>

<asset:javascript src="application.js"/>

</body>
</html>
