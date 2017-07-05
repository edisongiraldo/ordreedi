package ordreedi

class UserRole {

	String  role // Avaliable values: AD - Administrator, CO - Coordinator, CA - Cashier, CH - Chef, WA - Waiter
    Date   	dateCreated	// Internal uses
    Date   	lastUpdated	// Internal uses

    static belongsTo = [_user: User]

    static constraints = {
    }
}
