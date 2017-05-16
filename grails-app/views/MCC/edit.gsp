<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="MCC.edit.label" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="MCC.edit.label" /></div>
        <g:link class="item" action="index"><g:message code="MCC.list" /></g:link>
        <g:link class="item" action="create"><g:message code="MCC.new.label" /></g:link>
    </div>

    <g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
    </g:if>

    <g:hasErrors bean="${this.MCC}">
        <div class="ui error message">
            <ul class="list">
                <g:eachError bean="${this.MCC}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:form class="ui form" resource="${this.MCC}" method="PUT">
        <g:hiddenField name="version" value="${this.MCC?.version}" />

        <div class="field">
            <label for="code"><g:message code="MCC.code.label"/></label>
            <input type="number" id="code" name="code" min="0" max="9999" required value="${this.MCC.code}">
        </div>
        <div class="field">
            <label><g:message code="MCC.category.label" /></label>
            <g:select class="ui dropdown" name="category" from="${skop.Category.list()}"
                      value="${this.MCC.category.id}" optionKey="id" optionValue="name" />
        </div>

        <input class="ui button" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
    </g:form>
</body>
</html>
