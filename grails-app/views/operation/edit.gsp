<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="operation.edit.label" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="operation.edit.label" /></div>
        <g:link class="item" action="index"><g:message code="operation.list" /></g:link>
        <g:link class="item" action="create"><g:message code="operation.new.label" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <g:hasErrors bean="${this.operation}">
        <div class="ui error message">
            <ul class="list">
                <g:eachError bean="${this.operation}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:form class="ui form" resource="${this.operation}" method="PUT">
        <g:hiddenField name="version" value="${this.operation?.version}" />

        <g:render template="opFields" model="[op: this.operation]" />

        <input class="ui button" type="submit"
               value="${message(code: 'default.button.update.label', default: 'Update')}" />
    </g:form>
</body>
</html>
