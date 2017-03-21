<tr>
    <td>
    	<g:select name="orderitems[${Integer.valueOf(counter) + 1}].menu.id"
          from="${listMenuAvailable}"
          value=""
          optionKey="id"
          noSelection="['':'-Choose an item-']"/>
    </td>
    <td>0</td>
    <td>
    	<g:field name="orderitems[${Integer.valueOf(counter) + 1}].quantity" type="number" min="1" required="" size="3"/>
    </td>
    <td>
    	<g:field name="orderitems[${Integer.valueOf(counter) + 1}].notes" type="text" size="40"/>
    </td>
</tr>