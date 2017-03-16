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
}
