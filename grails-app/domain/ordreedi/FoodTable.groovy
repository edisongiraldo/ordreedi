package ordreedi

class FoodTable {

	// This domain represents the phisical tables used by a client in a place or branch.

	String 	tableName	// Table's identifier within the group of tables
	int  	numOfSpots	// Number of spots avaliable on the table
	String	tableStatus	// Describes the table's statu as A: Available, O: Account opened, C: Account closed, R: Reserved, U: Unavaliable
    Date   	dateCreated	// Internal uses
    Date   	lastUpdated	// Internal uses

    static transients = ['statusName']

    static constraints = {
    }

    def getStatusName() {
    	
    	def name = ""

    	switch(this.tableStatus) {
    	 	case "A":
    	 		name = "Available"
    	 		break
    	 	case "O":
    	 		name = "Account Opened"
    	 		break
    	 	case "C":
    	 		name = "Account Closed"
    	 		break
    	 	case "R":
    	 		name = "Reserved"
    	 		break
    	 	case "U":
    	 		name = "Unavailable"
    	 		break
    	 	default:
    	 		name = "Not in list"
    	 } 

    	 return name

    }

    String toString(){
        return "${tableID}"
    }   

}
