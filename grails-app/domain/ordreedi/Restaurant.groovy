package ordreedi

import grails.databinding.BindingFormat

class Restaurant {

	String  idNumber
	String  name
	boolean accessAllowed = true
	@BindingFormat('yyyy-MM-dd')
	Date    validSince = new Date()
	@BindingFormat('yyyy-MM-dd')
	Date    validThrow
    Date   	dateCreated		// Internal uses
    Date   	lastUpdated		// Internal uses

    static hasMany = [
    	_tableGroups: TableGroup,
    	_users: User
    ]

    static constraints = {
    	validThrow nullable: true, blank: true
    }

}
