<!doctype html>
<html>
<head>
    <meta name="layout" content="main" />
</head>
<body>
    <h1 class="ui header"><g:message code="default.list.label" args="[entityName]" /></h1>

    <g:link class="ui button" action="create">Добавить</g:link>

    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>

    <table class="ui selectable single line table">
        <thead>
            <tr>
                <th>mcc</th>
                <th>Category</th>
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
