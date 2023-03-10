<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'vendedor.label', default: 'Vendedor')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="container pt-5">
            <a href="#edit-vendedor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
            <div class="nav" role="navigation">
                <ul>
                    <li><g:link class="btn btn-success btn-xs" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                    <li><g:link class="btn btn-success btn-xs" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                </ul>
            </div>
            <div id="edit-vendedor" class="content scaffold-edit" role="main">
                <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
                </g:if>
                <g:hasErrors bean="${this.vendedor}">
                <ul class="errors" role="alert">
                    <g:eachError bean="${this.vendedor}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
                </g:hasErrors>
                <g:form resource="${this.vendedor}" method="PUT">
                    <g:hiddenField name="version" value="${this.vendedor?.version}" />
                    <fieldset class="form">
                        <f:all bean="vendedor" except="inventarios"/>
                    </fieldset>
                        <input class="btn btn-success btn-xs" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </g:form>
            </div>
        </div>
    </body>
</html>
