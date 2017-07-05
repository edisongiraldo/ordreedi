<html>

<head>
    <meta name="layout" content="main">
    <asset:javascript src="application.js"/>    
    <asset:javascript src="common.js"/>    
    <asset:stylesheet src="application.css"/>
</head>

<body >
    <h1>Lista de restaurantes</h1>
    <table border="1">
        <tr>
            <td>Identificación</td>
            <td>Nombre</td>
            <td>Estado</td>
            <td>Acceso Desde (dd/mm/aaaa)</td>
            <td>Acceso Hasta (dd/mm/aaaa)</td>
            <td><button type="button" onclick="callFormCRUD('restaurantForm', ''); return false;">Nuevo</button></td>
        </tr>
        <g:render template="listItemRestaurant" collection="${list}" />
    </table>

    <!-- Modal -->
    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-admin">
            <div class="modal-content"></div>
        </div>
    </div>

</body>
</html>