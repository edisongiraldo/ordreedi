package ordreedi

class FoodTableController {

	def FoodTableService

    def index() { 
    	redirect action:"list"
    }

    def list(){
    	def listFoodTable = FoodTableService.listFoodTable()
    	return [list:listFoodTable]
    }

    def tableOrderForm(){
    	println "***********"
    	println "Parameters list tableForm "+params
    	render(template: "tableOrderForm", model: [tableName: params.tableName, tableID: params.tableID])
    }

    def addOrderItem(){
    	def listMenu = FoodTableService.listMenuAvailable()
    	println "***********"
    	println "Parameters list "+params
		render (template: "orderItem", model:[listMenuAvailable: listMenu, counter: params.rowsNumber])
    }

    def saveTableOrder(){
    	/*
    	FoodTableService.saveTableOrder(params) 
        render "<h1>Order saved</h1>"
        */
	    def tableOrder = new TableOrder(params)
		if(tableOrder.validate()) {
            tableOrder.save(flush: true, failOnError: true)
           	render "<h1>Order saved</h1>"
        }
        else{
            tableOrder.errors.allErrors.each{
                println it
            }
        }
    }
}
