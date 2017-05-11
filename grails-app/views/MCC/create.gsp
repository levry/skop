<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'MCC.label', default: 'MCC')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:link class="ui button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>

        <h1><g:message code="default.create.label" args="[entityName]" /></h1>

        <g:if test="${flash.message}">
            <div class="ui success message" role="status">${flash.message}</div>
        </g:if>

        <g:hasErrors bean="${this.MCC}">
            <div class="ui error message">
                <ul class="list" role="alert">
                    <g:eachError bean="${this.MCC}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </div>
        </g:hasErrors>

        <g:form resource="${this.MCC}" method="POST" class="ui form">
            <f:field property="code" bean="MCC" />
            <f:field property="category" bean="MCC" />
            <g:submitButton name="create" class="ui button" value="${message(code: 'default.button.create.label', default: 'Create')}" />
        </g:form>
    </body>
</html>
