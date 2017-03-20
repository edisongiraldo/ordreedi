package ordreedi

class FoodTableController {

	def FoodTableService

    def index() { }

    def list(){
    	def listFoodTable = FoodTableService.listFoodTable()
    	return [list:listFoodTable]
    }

    def tableOrderForm(){
    	render "Prueba de formulario"
    	render(view: "tableOrderForm", model: [mensaje: "Encabezado Factura Grabado Correctamente"])
    }
}
