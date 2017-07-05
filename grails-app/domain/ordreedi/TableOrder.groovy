package ordreedi

class TableOrder {

	// This domain represents the customers' orders on each table

	String 	orderCons	// Order's identifier
	String	status		// Describes the order's status as O: Order opened, C: Order closed, D: Order Delivered, X: Order canceled
    Date   	dateCreated	// Internal uses
    Date   	lastUpdated	// Internal uses


    static belongsTo = [foodtable: FoodTable]

    static hasMany = [orderitems: OrderItem]

    static constraints = {
    }

    String toString(){
        return "${orderID + " " + status}"
    }
}
