package ordreedi

import grails.transaction.Transactional

@Transactional
class FoodTableService {

    def serviceMethod() {

    }

    def listFoodTable(){
    	def foodtablelist = FoodTable.list()
    	return foodtablelist
    }

    def listMenuAvailable(){
    	def criteria = Menu.createCriteria();
    	def result = criteria.list{
    		gt("unitsAvailable", 0)
    	}
    	return result
    }

    def saveTableOrder(formData){
    	def tableorder = new TableOrder()
    	tableorder.foodtable = FoodTable.findById(formData.tableID)
    	tableorder.orderCons = formData.orderCons
    	tableorder.status = formData.status
    	tableorder.orderitems = formData.orderitem

		if(tableorder.validate()) {
            tableorder.save(flush: true, failOnError: true)
        }
        else{
            tableorder.errors.allErrors.each{
                println it
            }
        }    	
    }

}
