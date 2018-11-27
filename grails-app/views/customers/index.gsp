<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customers.label', default: 'Customers')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-customers" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-customers" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            %{--<f:table collection="${customersList}" />--}%

            <table class='display'>
                <tr>
                    <th>Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>Country</th>
                    <th>District</th>

                </tr>

                <g:each in="${customersList}" var="c">
                    <tr>
                        <td>${c.firstName}</td>
                        <td>${c.lastName}</td>
                        <td>${c.address}</td>
                        <td>${c.city}</td>
                        <td>${c.country}</td>
                        <td>${c.district}</td>

                        <td><g:link action="show" id="${c.id}">Details</g:link></td>

                    </tr>
                </g:each>
            </table>

            <div class="pagination">
                <g:paginate total="${customersCount ?: 0}" />
            </div>
        </div>
    </body>
</html>