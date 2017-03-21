package ordreedi

class OrderItem {

	// This domain represents the order's items
	Menu	menu
	String  notes
	int 	quantity
    Date   	dateCreated	// Internal uses
    Date   	lastUpdated	// Internal uses

    static belongsTo = [tableorder: TableOrder]

    static constraints = {
    }


}
