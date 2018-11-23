<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'films.label', default: 'Films')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-films" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                            default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-films" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
%{--<f:table collection="${filmsList}" />--}%
    <table class='display'>
        <tr>
            <th>Title</th>
            <th>Category</th>
            <th>Special Features</th>
            %{--<th>Description</th>--}%
            <th>Length</th>
            <th>Rating</th>
            <th>Replacement Cost</th>
            <th>Rental Duration</th>
        </tr>

        <g:each in="${filmsList}" var="c">
            <tr>
                <td>${c.title}</td>
                <td>${c.category}</td>
                <td>${c.specialFeatures}</td>
                <td>${c.description}</td>
                %{--<td>${c.length}</td>--}%
                <td>${c.rating}</td>
                <td>${c.replacementCost}</td>
                <td>${c.rentalDuration}</td>

                <td><g:link action="show" id="${c.id}">Details</g:link></td>

            </tr>
        </g:each>
    </table>

    <div class="pagination">
        <g:paginate total="${filmsCount ?: 0}"/>
    </div>
</div>
</body>
</html>