<tr>
    <td>${it.idNumber}</td>
    <td>${it.name}</td>
    <td>${it.accessAllowed}</td>
    <td>${it.validSince.format("dd/MM/YYYY")}</td>
    <td>${it.validThrow?.format("dd/MM/YYYY")}</td>
    <td><button type="button" onclick="callFormCRUD('restaurantForm', '${it.id}'); return false;">Editar</button></td>
</tr>