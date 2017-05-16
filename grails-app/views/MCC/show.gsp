<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="MCC.label" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <g:link class="item" action="index"><g:message code="MCC.list" /></g:link>
        <g:link class="item" action="create"><g:message code="MCC.new.label" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="ui success message" >${flash.message}</div>
    </g:if>

    <div class="ui card">
        <div class="content">
            <div class="header"><g:message code="MCC.label" default="MCC"/></div>
        </div>
        <div class="content">
            <table class="ui definition table">
                <tbody>
                    <tr>
                        <td><g:message code="MCC.code.label"/></td>
                        <td>${this.MCC.code}</td>
                    </tr>
                    <tr>
                        <td><g:message code="MCC.category.label"/></td>
                        <td>${this.MCC.category.name}</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="extra content">
            <div class="ui two buttons">
                <g:link class="ui button" action="edit" resource="${this.MCC}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                <g:form resource="${this.MCC}" method="DELETE">
                    <input class="ui button" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </g:form>
            </div>
        </div>
    </div>
</body>
</html>
