package com.man.env

class Booking {
	Date reservedFrom
	Date reservedTo
	
	static belongsTo = [pm: User, env: Environment]

    static constraints = {

    }
}
