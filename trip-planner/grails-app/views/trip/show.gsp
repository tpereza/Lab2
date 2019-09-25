<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <style>
          div.contenedor1{
            display: grid; 
            grid-template-columns: 1fr;
            background-color: green;
            font-family: "Times New Roman", Times, serif;
            border: #333 1px solid;
            color: wheat;
            justify-items: center;
          }
          div.contenedor2{
            display: grid; 
            grid-template-columns: 1fr;
            background-color: wheat;
            font-family: "Times New Roman", Times, serif;
            justify-items: center;
          }


           div.bottom-two {
              margin-top: 1cm;
              margin-bottom: 1cm;
            }
        </style>
        <a href="#show-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="show-trip" class="content scaffold-show" role="main">
            <div class = "contenedor1">
                <h1> The trip you were looking for </h1>
            </div>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:display bean="trip" />
            <g:form resource="${this.trip}" method="DELETE">
                <fieldset class="buttons">
                    <g:link class="edit" action="edit" resource="${this.trip}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
                </fieldset>
            </g:form>
        </div>
        <div class = "contenedor2">
            <div class = "bottom-two">
            <h4>You can access the trips by clicking on the 'Trip List' button</h4>
            </div>
        </div>
    </body>
</html>
