package ordreedi

class User {

	String  document
	String	name
	String  lastName
	boolean accessAllowed = false
	Date    validSince = new Date()
	Date    validThrow
    Date   	dateCreated	// Internal uses
    Date   	lastUpdated	// Internal uses

    static belongsTo = [_restaurant: Restaurant]

    static hasMany = [_userRoles: UserRole]

    static constraints = {
    }
}
