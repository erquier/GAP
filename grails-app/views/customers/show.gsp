<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'customers.label', default: 'Customers')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#show-customers" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-customers" class="content scaffold-show" role="main">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            %{--<f:display bean="customers" />--}%

            <div class="col-md-6">

                <div class="form-group">
                    <label for="firstName" class="col-md-3 control-label">First Name</label>
                    <g:textField name="firstName" readonly="true" value="${customers.firstName}"/>
                </div>

                <div class="form-group">
                    <label for="lastName" class="col-md-3 control-label">Last Name</label>
                    <g:textField name="lastName" readonly="true" value="${customers.lastName}"/>
                </div>

                <div class="form-group">
                    <label for="address" class="col-md-3 control-label">Address</label>
                    <g:textField name="address" readonly="true" value="${customers.address}"/>
                </div>

                <div class="form-group">
                    <label for="city" class="col-md-3 control-label">City</label>
                    <g:textField name="city" readonly="true" value="${customers.city}"/>
                </div>

                <div class="form-group">
                    <label for="country" class="col-md-3 control-label">Country</label>
                    <g:textField name="country" readonly="true" value="${customers.country}"/>
                </div>

                <div class="form-group">
                    <label for="district" class="col-md-3 control-label">District</label>
                    <g:textField name="district" readonly="true" value="${customers.district}"/>
                </div>

            </div>

            <div class="col-md-4">
                <h3>Historial de renta</h3>

                <table class="display">
                    <tr>
                        <th>Historial</th>
                    </tr>

                    <g:each in="${filmsList}" var="f">

                        <td>${f.rentalDuration}</td>

                    </g:each>

                </table>


            <div class="col-md-12">
            <g:form resource="${this.customers}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.customers}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
            </div>
        </div>
    </body>
</html>
