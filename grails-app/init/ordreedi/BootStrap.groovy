package ordreedi
import grails.util.Environment

class BootStrap {

    def init = { servletContext ->

        if(Environment.current == Environment.DEVELOPMENT) {

        	//FoodTable 1
			def fTable = new FoodTable(	
								tableName: "FoodTable No 1 (One)", numOfSpots: 5, 
        						tableStatus: "A" 
        					)
        					.save()        	
        	//FoodTable 2
			fTable = new FoodTable(	
								tableName: "FoodTable No 2 (Two)", numOfSpots: 2, 
        						tableStatus: "R" 
        					)
        					.save() 	

        	//FoodTable 3
			fTable = new FoodTable(	
								tableName: "FoodTable No 3 (Three)", numOfSpots: 10, 
        						tableStatus: "U" 
        					)
        					.save()

        }

    }

    def destroy = {
    }
}
