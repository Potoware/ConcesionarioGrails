<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#edit-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="btn btn-success btn-xs" action="index"><g:message code="label.index.inventario.listado.venta" args="[entityName]" /></g:link></li>
                    <li><g:link class="btn btn-success btn-xs" action="create"><g:message code="label.index.inventario.registrar.venta" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="edit-inventario" class="content scaffold-edit" role="main">
                <h1><g:message code="label.index.inventario.editar.venta" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.inventario}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.inventario}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form resource="${this.inventario}" method="PUT">
                    <g:hiddenField name="version" value="${this.inventario?.version}" />
                    <fieldset class="form">
                        <f:all bean="inventario"/>
                    </fieldset>

                    <input class="btn btn-success btn-xs" type="submit" value="${message(code: 'label.index.inventario.actualizar.venta', default: 'Update')}" />

                </g:form>
            </div>
        </div>
    </body>
</html>
