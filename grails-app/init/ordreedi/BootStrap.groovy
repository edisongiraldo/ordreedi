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

            // Inventary init
            def menu = new Menu(
                            itemName: "Coca-Cola Zero", unitsAvailable: 1000
                        )
                        .save()

            menu = new Menu(
                            itemName: "Coca-Cola", unitsAvailable: 2000
                        )
                        .save()

            menu = new Menu(
                            itemName: "Sprite", unitsAvailable: 2
                        )
                        .save()

            menu = new Menu(
                            itemName: "RoastBeef", unitsAvailable: 50
                        )
                        .save()

            menu = new Menu(
                            itemName: "TBoney Pig Meat", unitsAvailable: 50
                        )
                        .save()

            menu = new Menu(
                            itemName: "Thai Rice", unitsAvailable: 0
                        )
                        .save()
        }

    }

    def destroy = {
    }
}
