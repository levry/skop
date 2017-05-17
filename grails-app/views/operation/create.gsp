<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="operation.create.label" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="operation.create.label" /></div>
        <g:link class="item" action="index"><g:message code="operation.list" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="ui success message">${flash.message}</div>
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

    <g:form resource="${this.operation}" method="POST" class="ui form">
        <g:render template="opFields" model="[op: this.operation]" />
        <g:submitButton name="create" class="ui button"
                        value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </g:form>
</body>
</html>
