<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'films.label', default: 'Films')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-films" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-films" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
%{--<f:display bean="films" />--}%
    <div class="col-md-6">

        <div class="form-group">
            <label for="FirstName" class="col-md-3 control-label">First Name</label>
            <g:textField name="FirstName" readonly="true" value="${actors.firstName}"/>
        </div>

        <div class="form-group">
            <label for="LastName" class="col-md-3 control-label">Last Name</label>
            <g:textField name="LastName" readonly="true" value="${actors.lastName}"/>
        </div>


    </div>





</div>
</body>
</html>
