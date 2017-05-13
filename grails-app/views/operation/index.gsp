<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'operation.label', default: 'Operation')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="default.list.label" args="[entityName]" /></div>
        <g:link class="item" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <table class="ui selectable single line table">
        <thead>
        <tr>
            <th><g:message code="operation.date.label" default="Date" /></th>
            <th><g:message code="operation.amount.label" default="Amount" /></th>
            <th><g:message code="operation.discharge.label" default="Discharge" /></th>
            <th><g:message code="operation.location.label" default="Location" /></th>
            <th><g:message code="operation.mcc.label" default="MCC" /></th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${operationList}" var="op" status="i">
            <tr>
                <td><g:link method="GET" resource="${op}">${op.date.format('dd.MM.yyyy HH.mm')}</g:link></td>
                <td><f:display bean="${op}" property="amount" displayStyle="table"/></td>
                <td><f:display bean="${op}" property="discharge" displayStyle="table" /></td>
                <td><f:display bean="${op}" property="location" displayStyle="table" /></td>
                <td><f:display bean="${op}" property="mcc.code" displayStyle="table" /></td>
            </tr>
        </g:each>
        </tbody>
        <tfoot>
        <tr><th colspan="5">
            <div class="ui right floated pagination menu">
                <g:paginate total="${operationCount?:0}" />
            </div>
        </th>
        </tr>
        </tfoot>
    </table>
</body>
</html>