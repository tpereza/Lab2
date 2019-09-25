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
                 <h1>Enter the position of the list from which you wish to obtain the trip:</h1>
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
        <div class = "contenedor2">
           <div class = "bottom-two">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8153530.352985884!2d-69.44344204916317!3d-3.7631118114641318!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x92183f5c8b1d6ed1%3A0x176d6af66b3c2efa!2sState%20of%20Amazonas%2C%20Brazil!5e0!3m2!1sen!2sco!4v1569367069524!5m2!1sen!2sco" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
            </div>
        </div>
    </body>
</html>