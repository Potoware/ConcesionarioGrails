<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'vehiculo.label', default: 'Vehiculo')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#create-vehiculo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="btn btn-success btn-xs" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="create-vehiculo" class="content scaffold-create" role="main">
                <h1><g:message code="default.create.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.vehiculo}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.vehiculo}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form resource="${this.vehiculo}" method="POST">
                    <fieldset class="form">
                        <f:all bean="vehiculo" except="inventarios, estado"/>
                    </fieldset>
                    <g:submitButton name="create" class="btn btn-success btn-xs" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
