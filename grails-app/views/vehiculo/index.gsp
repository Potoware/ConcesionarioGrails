<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#list-vehiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <g:link class="btn btn-success btn-xs" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
            </div>
            <div id="list-vehiculo" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:table collection="${vehiculoList}" properties="['serial', 'marca', 'modelo', 'año', 'color','estado']" />

                <div class="pagination">
                    <g:paginate total="${vehiculoCount ?: 0}" />
                </div>
            </div>
        </div>
    </body>
</html>