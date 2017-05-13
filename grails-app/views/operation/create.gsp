<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'operation.label', default: 'Operation')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="default.create.label" args="[entityName]" /></div>
        <g:link class="item" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
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

    <g:form name="op-create" resource="${this.operation}" method="POST" class="ui form">
        <f:field bean="${this.operation}" property="date" />
        <f:field bean="${this.operation}" property="payment" />
        <f:field bean="${this.operation}" property="discharge" />
        <f:field bean="${this.operation}" property="mcc" />
        <f:field bean="${this.operation}" property="location" />
        <g:submitButton name="create" class="ui button" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </g:form>
</body>
</html>
