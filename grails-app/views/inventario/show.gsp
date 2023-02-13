<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#show-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="btn btn-success btn-xs" action="index"><g:message code="label.index.inventario.listado.venta" args="[entityName]" /></g:link></li>
                    <li><g:link class="btn btn-success btn-xs" action="create"><g:message code="label.index.inventario.registrar.venta" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="show-inventario" class="content scaffold-show" role="main">
                <h1><g:message code="default.show.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <f:display bean="inventario" />
                <g:form resource="${this.inventario}" method="DELETE">
                <g:link class="btn btn-success btn-xs" action="edit" resource="${this.inventario}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <input class="btn btn-success btn-xs btn-danger" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

                </g:form>
            </div>
        </div>
    </body>
</html>
