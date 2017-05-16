<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="MCC.list" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="MCC.list" /></div>
        <g:link class="item" action="create"><g:message code="MCC.new.label" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <table class="ui selectable single line table">
        <thead>
            <tr>
                <th><g:message code="MCC.code.label" default="Code" /></th>
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
