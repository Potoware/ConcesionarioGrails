<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'inventario.label', default: 'Inventario')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#create-inventario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
            <g:link class="btn btn-success btn-xs" action="index"><g:message code="label.index.inventario.listado.venta" args="[entityName]" /></g:link>
            </div>
            <div id="create-inventario" class="content scaffold-create" role="main">
                <h1><g:message code="label.index.inventario.registrar.venta" args="[entityName]" /></h1>
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
                <g:form resource="${this.inventario}" method="POST">
                    <fieldset class="form">
                       
                        <f:field bean="inventario" property="vendedor"/>
                        <f:field bean="inventario" property="cliente"/>
                        <f:field bean="inventario" property="vehiculo">
                            <g:select name="vehiculo.id" from="${vehiculos}" optionKey="id" value="${inventario?.vehiculo?.id}"/>
                        </f:field>
                        
                    </fieldset>
                        <g:submitButton name="create" class="btn btn-success btn-xs" value="${message(code: 'label.index.inventario.registrar.venta', default: 'Create')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
