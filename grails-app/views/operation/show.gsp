<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'operation.label', default: 'Operation')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="default.show.label" args="[entityName]" /></div>
        <g:link class="item" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
        <g:link class="item" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="ui success message" >${flash.message}</div>
    </g:if>

    <f:display bean="operation" />

    <div class="ui buttons">
        <g:link class="ui button" action="edit" resource="${this.operation}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:form resource="${this.operation}" method="DELETE">
            <input class="ui button" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </g:form>
    </div>
</body>
</html>
