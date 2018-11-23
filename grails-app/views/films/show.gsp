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
            <label for="Title" class="col-md-3 control-label">Title</label>
            <g:textField name="Title" readonly="true" value="${films.title}"/>
        </div>

        <div class="form-group">
            <label for="Category" class="col-md-3 control-label">Category</label>
            <g:textField name="Category" readonly="true" value="${films.category}"/>
        </div>

        <div class="form-group">
            <label for="SpecialFeatures" class="col-md-3 control-label">Special Features</label>
            <g:textField name="SpecialFeatures" readonly="true" value="${films.specialFeatures}"/>
        </div>

        <div class="form-group">
            <label for="Description" class="col-md-3 control-label">Description</label>
            <g:textField name="Description" readonly="true" value="${films.description}"/>
        </div>

        <div class="form-group">
            <label for="Length" class="col-md-3 control-label">Length</label>
            <g:textField name="Length" readonly="true" value="${films.length}"/>
        </div>

        <div class="form-group">
            <label for="Rating" class="col-md-3 control-label">Rating</label>
            <g:textField name="Rating" readonly="true" value="${films.rating}"/>
        </div>

        <div class="form-group">
            <label for="ReplacementCost" class="col-md-3 control-label">Replacement Cost</label>
            <g:textField name="ReplacementCost" readonly="true" value="${films.replacementCost}"/>
        </div>

        <div class="form-group">
            <label for="RentalDuration" class="col-md-3 control-label">Rental Duration</label>
            <g:textField name="RentalDuration" readonly="true" value="${films.rentalDuration}"/>
        </div>

    </div>


    <div class="col-md-4">
        <h3>Listado de actores</h3>

        <table class='display'>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>

            </tr>

            <g:each in="${films.actors}" var="a">
                <tr>
                    <td>${a.firstName}</td>
                    <td>${a.lastName}</td>
                    <td><g:link controller="actors" action="show" id="${a.id}">Details</g:link></td>
                </tr>
            </g:each>
        </table>
    </div>

    <div class="col-md-12">
        <g:form resource="${this.films}" method="DELETE">
            <fieldset class="buttons">
                <g:link class="edit" action="edit" resource="${this.films}"><g:message code="default.button.edit.label"
                                                                                       default="Edit"/></g:link>
                <input class="delete" type="submit"
                       value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                       onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
