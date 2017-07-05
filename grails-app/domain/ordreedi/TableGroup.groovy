package ordreedi

class TableGroup {

	String  name
    Date   	dateCreated	// Internal uses
    Date   	lastUpdated	// Internal uses

    static belongsTo = [_restaurant: Restaurant]


    static constraints = {
    }
}
