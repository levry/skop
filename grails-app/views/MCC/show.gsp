<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'MCC.label', default: 'MCC')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
    <g:link class="ui basic button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
    <g:link class="ui basic button" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>

    <h1><g:message code="default.show.label" args="[entityName]" /></h1>

    <g:if test="${flash.message}">
        <div class="ui success message" >${flash.message}</div>
    </g:if>

    <f:display bean="MCC" />
    <div class="ui buttons">
        <g:link class="ui button" action="edit" resource="${this.MCC}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
        <g:form resource="${this.MCC}" method="DELETE">
            <input class="ui button" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </g:form>
    </div>
</body>
</html>
