<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Ops"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="app.css"/>

</head>
<body>
    <div class="ui fixed inverted menu">
        <div class="ui container">
            <a class="header item" href="${createLink(uri: '/')}">
                <asset:image src="grails-cupsonly-logo-white.svg" />
                <g:message code="default.home.label"/>
            </a>
            <g:link controller="Operation" action="index" class="item">Ops</g:link>
            <g:link controller="MCC" action="list" class="item">MCC</g:link>
        </div>
    </div>

    <g:layoutBody/>

    <asset:javascript src="application.js"/>

</body>
</html>