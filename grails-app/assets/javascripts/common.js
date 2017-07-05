    function callFormCRUD(pURL, pID){
        $.ajax({
                type: "GET",
                url: pURL,
                datatype: "html",
                data:{
                    id: pID
                }
        }).success(function(data) {
            $('.modal-content').html(data);
            $('#myModal').modal('show');
        });
    }

    function saveForm(pButton){

        var miForm = $(pButton).parents("form");
        var oData = new FormData(miForm[0]);
        var url = miForm.attr("action");
        console.log("Datos Guardar: "+oData);
        $.ajax({
             url:url,
             type:'POST',
             data:oData,
             processData: false,  // tell jQuery not to process the data
             contentType: false ,
             success:function (req) {
                   $("#ajaxMessage").html(req);
             },
             error:function (jqXHR, textStatus, errorThrown){
                alert("Error: "+errorThrown);
             }
         });

    }