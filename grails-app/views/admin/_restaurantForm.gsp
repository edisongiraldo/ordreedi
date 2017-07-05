<g:form name="myForm" on404="alert('not found!')"
              url="[action:'saveRestaurant']">
	
	
    <g:if test="${row!= null}">
      <g:field type="hidden" name="id" value="${row.id}"/>
	</g:if>

	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Datos del Restaurante</h3>
	</div>

	<div class="modal-body">

			<div id="ajaxMessage">Por favor complete los datos del formulario:</div>

			<div class="form-group">
				<label for="idNumber">Identificación</label>
				<g:field type="number" name="idNumber" id="idNumber" required="" value="${row?.idNumber}"/>
			</div>
			<div class="form-group">
				<label for="name">Razón Social</label>
				<g:field type="text" name="name" id="name" required="" size="100" value="${row?.name}"/>
			</div>
			<div class="form-group">
				<label for="name">Acceso desde</label>
				<g:field type="date" name="validSince" id="validSince" required="" pattern="YYYY-MM-dd" value="${(row?.validSince?:new Date()).format("YYYY-MM-dd")}"/>
			</div>
			<div class="form-group">
				<label for="name">Acceso hasta</label>
				<g:field type="date" name="validThrow" id="validThrow" value="${row?.validThrow?.format("YYYY-MM-dd")}"/>
			</div>

	</div>
	<div class="modal-footer"> 
		  <button type="button" class="btn btn-primary" onclick="saveForm(this); return false;">Guardar</button>
		  <button type="button" class="btn btn-primary" data-dismiss="modal">Cancelar</button>
	</div>

</g:form>
