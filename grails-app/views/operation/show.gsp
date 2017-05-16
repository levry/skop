<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="operation.label" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <g:link class="item" action="index"><g:message code="operation.list" /></g:link>
        <g:link class="item" action="create"><g:message code="operation.new.label" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="ui success message" >${flash.message}</div>
    </g:if>

    <div class="ui card">
        <div class="content">
            <div class="header"><g:message code="operation.label" default="Operation"/></div>
        </div>
        <div class="content">
            <table class="ui definition table">
                <tbody>
                    <tr>
                        <td><g:message code="operation.date.label" /></td>
                        <td>${this.operation.date.format('dd.MM.yyyy HH.mm')}</td>
                    </tr>
                    <tr>
                        <td><g:message code="operation.amount.label" /></td>
                        <td>${this.operation.amount}</td>
                    </tr>
                    <tr>
                        <td><g:message code="operation.discharge.label" /></td>
                        <td>${this.operation.discharge}</td>
                    </tr>
                    <tr>
                        <td><g:message code="operation.mcc.label" /></td>
                        <td>
                            ${this.operation.mcc.code}
                            <div class="meta">${this.operation.category.name}</div>
                        </td>
                    </tr>
                    <tr>
                        <td><g:message code="operation.location.label" /></td>
                        <td>${this.operation.location}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="extra content">
            <div class="ui buttons">
                <g:link class="ui button" action="edit" resource="${this.operation}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:form resource="${this.operation}" method="DELETE">
                    <input class="ui button" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </g:form>
            </div>
        </div>
    </div>

</body>
</html>
