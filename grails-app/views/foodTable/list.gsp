<html>

<head>
    <meta name="layout" content="main">
    <asset:javascript src="application.js"/>    
    <asset:stylesheet src="application.css"/>

    <g:javascript>
        function callForm(pTableName){
            $.ajax({
                    type: "POST",
                    url: "tableOrderForm",
                    datatype: "html",
                    data:{
                        tableName: pTableName
                    }
            }).success(function(data) {
                console.log(data);
                $('.modal-content').html(data);
                $('#myModal').modal('show');
            });
        }
    </g:javascript>
</head>

<body >
    <h1>Tables list</h1>
    <table border="1">
        <tr>
            <td>Table Identifier</td>
            <td>Number of spots</td>
            <td>Status</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <g:render template="listItem" collection="${list}" />
    </table>

    <!-- Modal -->
    <div id="myModal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content"></div>
        </div>
    </div>

</body>
</html>