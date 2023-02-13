<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#list-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <g:link class="btn btn-success btn-xs" action="create"><g:message code="label.index.inventario.registrar.venta" args="[entityName]" /></g:link>
            </div>
            <div id="list-inventario" class="content scaffold-list" role="main">
                <h1><g:message code="label.index.inventario.listado.venta" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table collection="${inventarioList}" properties="id,vehiculo.serial, vehiculo.marca, vendedor.datosVendedor, cliente.datosCliente">
                </f:table>
                <div class="pagination">
                    <g:paginate total="${inventarioCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>