<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Welcome to Ops</title>

    <asset:link rel="icon" href="favicon.ico" type="image/x-ico" />
</head>
<body>

    <h1 class="ui header">Categories</h1>

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

    <h1 class="ui header">Operations</h1>
    %{-- TODO ops, pagination --}%
    <table class="ui selectable single line table">
        <thead>
        <tr>
            <th>Category</th>
            <th>Date</th>
            <th>Value</th>
            <th>Location</th>
        </tr>
        </thead>
        <tbody>
        %{-- TODO format --}%
        <g:each in="${ops}" var="op" status="i">
            <tr>
                <td><f:display bean="${op}" property="mcc.category.name" /></td>
                <td><f:display bean="${op}" property="date" /></td>
                <td><f:display bean="${op}" property="payment" /></td>
                <td><f:display bean="${op}" property="location" /></td>
            </tr>
        </g:each>
        </tbody>
        <tfoot>
        <tr><th colspan="2">
            <div class="ui right floated pagination menu">
                <g:paginate controller="home" action="index" total="${ops.totalCount?:0}" />
            </div>
        </th>
        </tr>
        </tfoot>
    </table>

</body>
</html>
