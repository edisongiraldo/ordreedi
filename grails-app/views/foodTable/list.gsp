<html>

<head>
    <meta name="layout" content="main">
    <asset:javascript src="application.js"/>    
    <asset:stylesheet src="application.css"/>

    <g:javascript>
        function callForm(){
            $.ajax({
                    type: "GET",
                    url: "tableOrderForm",
                    datatype: "html"
            }).success(function(data) {
                console.log(data);
                $('.modal-body').html(data);
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
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          <h3 id="myModalLabel">Members</h3>
        </div>
        <div class="modal-body">
        </div>
    </div>

</body>
</html>