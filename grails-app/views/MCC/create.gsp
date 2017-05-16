<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <title><g:message code="MCC.create.label" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="MCC.create.label" /></div>
        <g:link class="item" action="index"><g:message code="MCC.list" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="ui success message">${flash.message}</div>
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

    <g:form resource="${this.MCC}" method="POST" class="ui form">
        <div class="field">
            <label for="code"><g:message code="MCC.code.label"/></label>
            <input type="number" id="code" name="code" min="0" max="9999" required>
        </div>
        <div class="field">
            <label><g:message code="MCC.category.label" /></label>
            <g:select class="ui dropdown" name="category" from="${skop.Category.list()}" optionKey="id" optionValue="name" />
        </div>

        <g:submitButton name="create" class="ui button" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </g:form>
</body>
</html>
