<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'MCC.label', default: 'MCC')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <g:link class="ui button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="ui button" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

        <h1 class="ui header"><g:message code="default.edit.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
        </g:if>

        <g:hasErrors bean="${this.MCC}">
            <div class="ui error message">
                <ul class="list">
                    <g:eachError bean="${this.MCC}" var="error">
                        <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                    </g:eachError>
                </ul>
            </div>
        </g:hasErrors>

        <g:form class="ui form" resource="${this.MCC}" method="PUT">
            <g:hiddenField name="version" value="${this.MCC?.version}" />
            <f:all bean="MCC"/>
            <input class="ui button" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
        </g:form>
    </body>
</html>
