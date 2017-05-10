<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="base" />
        <g:set var="entityName" value="${message(code: 'MCC.label', default: 'MCC')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="ui main container">
            <g:link class="ui button" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link>

            <h1><g:message code="default.create.label" args="[entityName]" /></h1>

            <g:if test="${flash.message}">
                <div class="ui success message" role="status">${flash.message}</div>
            </g:if>

            <g:hasErrors bean="${this.MCC}">
                <div class="ui error message">
                    <ul class="list" role="alert">
                        <g:eachError bean="${this.MCC}" var="error">
                            <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                        </g:eachError>
                    </ul>
                </div>
            </g:hasErrors>

            <g:form resource="${this.MCC}" method="POST" class="ui form">
                <f:field property="code" bean="MCC" />
                <f:field property="category" bean="MCC" />
                <g:submitButton name="create" class="ui button" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </g:form>
        </div>

        <a href="#create-MCC" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>



        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-MCC" class="content scaffold-create" role="main">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.MCC}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.MCC}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.MCC}" method="POST">
                <fieldset class="form">
                    <f:field property="code" bean="MCC" />
                    <f:field property="category" bean="MCC" />
                    %{--<f:all bean="MCC"/>--}%
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
