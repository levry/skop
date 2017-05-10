<!doctype html>
<html>
<head>
    <meta name="layout" content="base" />
</head>
<body>
    <div class="ui main container">
        <h1 class="ui header"><g:message code="default.list.label" args="[entityName]" /></h1>

        <button class="ui button" onclick="$('.ui.modal').modal('show');">Add</button>
        <g:link class="ui button" action="create">Добавить</g:link>

        <div class="ui modal">
            <i class="close icon"></i>
            <div class="header">Add MCC</div>
            <div class="content">
                <g:set var="MCC" value="${new skop.MCC()}" />
                <g:form controller="MCC" action="save" method="POST" class="ui form">
                    <f:field property="id" bean="MCC" label="MCC" />
                    <f:field property="category" bean="MCC" />
                </g:form>
            </div>
            <div class="actions">
                <div class="ui deny button">Cancel</div>
                <div class="ui positive labeled icon button">
                    <i class="checkmark icon"></i>
                    Save
                </div>
            </div>
        </div>

        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

        <table class="ui selectable single line table">
            <thead>
                <tr>
                    <th>mcc</th>
                    <th>Category</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${items}" var="item" status="i">
                    <tr>
                        <td><f:display bean="${item}" property="id" /></td>
                        <td><f:display bean="${item}" property="category.name" /></td>
                    </tr>
                </g:each>
            </tbody>
            <tfoot>
                <tr><th colspan="2">
                    <div class="ui right floated pagination menu">
                        <g:paginate controller="MCC" action="list" total="${itemsCount?:0}" />
                    </div>
                </th>
                </tr>
            </tfoot>
        </table>
    </div>
</body>
</html>
