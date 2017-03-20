<html>
	<g:form name="myForm" on404="alert('not found!')" update="ajaxMessage"
	              url="[action:'saveTableOrder']">
	  <p>Table: <input type="text" name="foodtable.tableName" /></p>
	  <p>Order cons. <input type="text" name="orderCons" /></p>
	  <p>Status: <input type="text" name="status" /></p>

	<g:link action="nuevoItem" onclick="nuevoItemAjax(); return false;">+ Item</g:link>

	<div id="itemsFactura"></div>

	  <input type="submit" value="Save Order">
	</g:form>
</html>