<g:form name="myForm" on404="alert('not found!')" update="ajaxMessage"
              url="[action:'saveTableOrder']">
	
	<f

	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Order Table: ${tableName}</h3>
	</div>

	<div class="modal-body">

			<div class="form-group">
				<label for="orderCons">Order cons</label>
				<g:field type="number" name="orderCons" id="orderCons" required=""/>
			</div>
			<div class="form-group">
				<label for="status">Status</label>
				<g:field type="text" name="status" id="status"/>
			</div>
			<g:link action="nuevoItem" onclick="nuevoItemAjax(); return false;">+ Item</g:link>

			<div id="itemsFactura"></div>

	</div>
	<div class="modal-footer"> 
		  <button type="submit" class="btn btn-primary">Save Order</button>
		  <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
	</div>

</g:form>
