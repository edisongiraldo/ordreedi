<g:form name="myForm" on404="alert('not found!')"
              url="[action:'saveTableOrder']">
	
	<g:hiddenField name="foodtable.id" value="${tableID}"/>

	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
		<h3 id="myModalLabel">Order Table: ${tableName}</h3>
	</div>

	<div class="modal-body">

			<div id="ajaxMessage">Please, complete the form:</div>

			<div class="form-group">
				<label for="orderCons">Order cons</label>
				<g:field type="number" name="orderCons" id="orderCons" required=""/>
			</div>
			<div class="form-group">
				<label for="status">Status</label>
				<g:field type="text" name="status" id="status"/>
			</div>
			
			<g:link action="addItem" onclick="addOrderItem(); return false;">+ Item</g:link>

			<table id="menuTable">
				<thead>
					<th>Item</th>
					<th>Available</th>
					<th>Number</th>
					<th>Notes</th>
				</thead>
				<tbody>
				</tbody>
			</table>

			<g:link action="addItem" onclick="addOrderItem(); return false;">+ Item</g:link>

			<div id="orderItems"></div>

	</div>
	<div class="modal-footer"> 
		  <button type="button" class="btn btn-primary" onclick="saveForm(this); return false;">Save Order</button>
		  <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
	</div>

</g:form>
