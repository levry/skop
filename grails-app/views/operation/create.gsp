<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'operation.label', default: 'Operation')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
    <div class="ui small secondary menu">
        <div class="header item"><g:message code="default.create.label" args="[entityName]" /></div>
        <g:link class="item" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>
    </div>

    <g:if test="${flash.message}">
        <div class="ui success message">${flash.message}</div>
    </g:if>

    <g:hasErrors bean="${this.operation}">
        <div class="ui error message">
            <ul class="list">
                <g:eachError bean="${this.operation}" var="error">
                    <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
        </div>
    </g:hasErrors>

    <g:form name="op-create" resource="${this.operation}" method="POST" class="ui form">
        <div class="field">
            <label for="date"><g:message code="operation.date.label" /></label>
            <input type="datetime-local" id="date" name="date" required value="${this.operation?.date?.format('yyyy-MM-dd\'T\'HH:mm')}" >
        </div>
        <div class="field">
            <label><g:message code="operation.amount.label" /></label>
            <div class="two fields">
                <div class="field">
                    <input type="number" name="amount.value" id="amount.value"
                           required placeholder="${message(code: 'operation.amount.label')}"
                           value="${this.operation?.amount?.value}">
                </div>
                <div class="field">
                    <g:currencySelect name="amount.currency" class="ui dropdown"
                                      value="${this.operation?.amount?.currency}" />
                </div>
            </div>
        </div>
        <div class="field">
            <label><g:message code="operation.discharge.label" /></label>
            <div class="two fields">
                <div class="field">
                    <input type="number" name="discharge.value" id="discharge.value"
                           required placeholder="${message(code: 'operation.discharge.label')}"
                           value="${this.operation?.discharge?.value}">
                </div>
                <div class="field">
                    <g:currencySelect name="discharge.currency" class="ui dropdown"
                                      value="${this.operation?.discharge?.currency}"/>
                </div>
            </div>
        </div>
        <div class="field">
            <label for="mcc"><g:message code="operation.mcc.label" /></label>
            <g:select name="mcc" from="${skop.MCC.list()}" optionKey="id" optionValue="code"
                      value="${this.operation?.mcc?.id}" />
        </div>
        <div class="field">
            <label for="location"><g:message code="operation.location.label" /></label>
            <input type="text" id="location" name="location"
                   required placeholder="${message(code: 'operation.location.label')}"
                   value="${this.operation?.location}">
        </div>
        <g:submitButton name="create" class="ui button" value="${message(code: 'default.button.create.label', default: 'Create')}" />
    </g:form>
</body>
</html>
