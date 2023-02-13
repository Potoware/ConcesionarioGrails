<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'vendedor.label', default: 'Vendedor')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#list-vendedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <g:link class="btn btn-success btn-xs" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
            </div>
            <div id="list-vendedor" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table collection="${vendedorList}" properties="['identificacion', 'apellidos', 'nombres', 'cargo', 'fechaIngreso']"/>

                <div class="pagination">
                    <g:paginate total="${vendedorCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>