package ordreedi

class FoodTableController {

	def FoodTableService

    def index() { }

    def list(){
    	def listFoodTable = FoodTableService.listFoodTable()
    	return [list:listFoodTable]
    }

    def tableOrderForm(params){
    	render(template: "tableOrderForm", model: [tableName: params.tableName])
    }
}
