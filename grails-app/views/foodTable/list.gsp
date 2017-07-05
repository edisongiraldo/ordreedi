<html>

<head>
    <meta name="layout" content="main">
    <asset:javascript src="application.js"/>    
    <asset:stylesheet src="application.css"/>

    <g:javascript>
        function callForm(pTableID, pTableName){
            $.ajax({
                    type: "POST",
                    url: "tableOrderForm",
                    datatype: "html",
                    data:{
                        tableName: pTableName,
                        tableID: pTableID
                    }
            }).success(function(data) {
                $('.modal-content').html(data);
                $('#myModal').modal('show');
            });
        }

        function saveForm(pButton){
            var oData = new FormData(document.forms[0]);
            var miForm = $(pButton).parents("form");
            var url=miForm.attr("action");
            console.log("action "+url);
            $.ajax({
                 url:url,
                 type:'POST',
                 data:oData,
                 processData: false,  // tell jQuery not to process the data
                 contentType: false ,
                 success:function (req) {
                       $("#ajaxMessage").html(req);
                 },
                 error:function (err){
                    alert("Error: "+err);
                 }
             });
        }

        function addOrderItem(){
            // Calculate the number of rows in the order's items table
            var miRowCounter = $("#menuTable tbody tr").length;
            console.log("miRowCounter "+miRowCounter);
            $.ajax({
                     url:"addOrderItem",
                     type:'POST',
                     datatype: "html",
                     data:{
                        rowsNumber: miRowCounter
                    },
             success:function (req) {
                   $("#menuTable tbody").append(req);
                }
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
    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-admin">
            <div class="modal-content"></div>
        </div>
    </div>

</body>
</html>