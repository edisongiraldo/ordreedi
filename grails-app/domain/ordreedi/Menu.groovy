package ordreedi

class Menu {

	// This domain represents the Menu available for the costumers. In this domain are all the food, drinks and services available for the costumers

	String 	itemName			// Item name
	int 	unitsAvailable		// Units in stock
    Date   	dateCreated			// Internal uses
    Date   	lastUpdated			// Internal uses

    static constraints = {
    }

    String toString(){
        return "${itemName + " " + unitsAvailable}"
    }
}
