<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'trip.label', default: 'Trip')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
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
            grid-auto-rows: minmax(14px,auto);
          }

          div.contenedor2{
            display: grid; 
            grid-template-columns: 1fr;
            background-color: wheat;
            font-family: "Times New Roman", Times, serif;
            border: #333 1px solid;
            justify-items: center;
          }


           div.bottom-two {
              margin-top: 1cm;
              margin-bottom: 1cm;
            }
        </style>
        <div class = "contenedor1">
                <h1> WELCOME TO TRIP WEB PAGE <h1>
        </div>
        <a href="#list-trip" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="list-trip" class="content scaffold-list" role="main">
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <f:table collection="${tripList}" />

            <div class="pagination">
                <g:paginate total="${tripCount ?: 0}" />
            </div>
        </div>
        <div class = "contenedor1">
             <h1> SEARCH BY LIST ID  <h1>
        </div>
        <div class = "contenedor2">
             <div class = "bottom-two">
                 <h6>Ingrese la posicion de la lista de la cual desea</h6>
             </div>
             <div class = "bottom-two">
                <input type="text" name="name" id="uniqueID" value="1" />
                <button onclick="generateTip()">Search</button>
                <script>
                    function generateTip() {
                        var x = "http://localhost:8080/trip/show/";
                        x += document.getElementById("uniqueID").value;
                        window.location.href = x;
                    }
                </script>
             </div>
        </div>
        <div class = "contenedor1">
             <h1> The best destiny for a trip AMAZONAS <h1>
        </div>
        <div class = "contenedor2">
           <div class = "bottom-two">
             <iframe width="560" height="315" src="https://www.youtube.com/embed/oela7cDoyzY?start=59" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
           </div>
        </div>
    </body>
</html>