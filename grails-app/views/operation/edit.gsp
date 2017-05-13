<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'operation.label', default: 'Operation')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="default.edit.label" args="[entityName]" /></div>
        <g:link class="item" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="item" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
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
        <f:all bean="operation"/>
        <input class="ui button" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
    </g:form>
</body>
</html>
