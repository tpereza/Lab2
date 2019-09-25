<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
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
              margin-top: 0.5cm;
              margin-bottom: 0.5cm;
            }
        </style>
        <div class = "contenedor1">
                <h1> Create a new trip </h1>
        </div>
        <a href="#create-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div class = "contenedor1">
                <h1> Info </h1>
        </div>
        <div class = "contenedor2">
            <div class = "bottom-two">
            <h4>The Name of the Destiny is mandatory</h4>
            <h4>The Arrival Date is mandatory</h4>
            <h4>The Duration Of The Trip is not mandatory</h4>
            </div>
        </div>
        <div id="create-trip" class="content scaffold-create" role="main">
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.trip}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.trip}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.trip}" method="POST">
                <fieldset class="form">
                    <f:all bean="trip"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
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
