package com.man.env

class Environment {
	String name
	String description
	String url
	String phaseUsage
	String status
	
	static hasMany = [bookings: Booking]
	
	String toString() { "$name:$phaseUsage" }
	
    static constraints = {
		name (blank:false, size: 3..150, nullable: false)
		description (maxSize: 5000)
		url (url: true, blank: true)
		phaseUsage (inList: ['dev', 'sit', 'uat', 'psup', 'prd'])
		status (inList: ['idle', 'utilized'])
    }
}
