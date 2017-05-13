<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Ops</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>
    <h1 class="ui header"><g:message code="category.list" /></h1>

    <div class="ui relaxed divided list">
        <g:each in="${cats}" var="cat" status="i">
        <div class="item">
            <i class="large suitcase middle aligned icon"></i>
            <div class="content">
                <a class="header" href="${createLink(params: [category: cat.category.id])}">${cat.category.name}</a>
                <div class="description">${cat.value.toPlainString()}</div>
            </div>
        </div>
        </g:each>
    </div>

    <h1 class="ui header"><g:message code="operation.list" /></h1>

    <table class="ui selectable single line table">
        <thead>
        <tr>
            <th><g:message code="operation.category.label" default="Category" /></th>
            <th><g:message code="operation.date.label" default="Date"/></th>
            <th><g:message code="operation.payment.label" default="Payment" /></th>
            <th><g:message code="operation.location.label" default="Location" /></th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${ops}" var="op" status="i">
            <tr>
                <td>${op.category.name}</td>
                <td>${op.date.format('dd.MM.yyyy HH.mm')}</td>
                <td>${op.payment}
                <g:if test="${!op.equalsDischargeCurrency()}">
                    <br><small>${op.discharge}</small>
                </g:if>
                </td>
                <td>${op.location}</td>
            </tr>
        </g:each>
        </tbody>
        <tfoot>
        <tr><th colspan="4">
            <div class="ui right floated pagination menu">
                <g:paginate controller="home" action="index" max="5" total="${ops.totalCount?:0}" />
            </div>
        </th>
        </tr>
        </tfoot>
    </table>
</body>
</html>
