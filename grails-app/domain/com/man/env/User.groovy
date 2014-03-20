package com.man.env

class User {
	String fullName
	String userName
	String password
	String email
	
	static hasMany = [bookings: Booking]
		
	String toString() { fullName }
	
	static constraints = {
		fullName()
		userName()
		email()
		password (display: false) 
	}
}
