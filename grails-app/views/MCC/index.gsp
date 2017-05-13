<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'MCC.label', default: 'MCC')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
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
                <th><g:message code="MMC.code.label" default="Code" /></th>
                <th><g:message code="MCC.category.label" default="Category" /></th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${mccs}" var="mcc" status="i">
                <tr>
                    <td><g:link method="GET" resource="${mcc}"><f:display bean="${mcc}" property="code"/></g:link></td>
                    <td><f:display bean="${mcc}" property="category.name" /></td>
                </tr>
            </g:each>
        </tbody>
        <tfoot>
            <tr><th colspan="2">
                <div class="ui right floated pagination menu">
                    <g:paginate controller="MCC" action="index" total="${mccCount?:0}" />
                </div>
            </th>
            </tr>
        </tfoot>
    </table>
</body>
</html>
