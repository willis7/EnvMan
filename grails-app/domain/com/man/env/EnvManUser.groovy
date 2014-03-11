package com.man.env

class EnvManUser {
	String fullName
	String userName
	String password
	String email
	
	String toString() { fullName }
	
	static constraints = {
		fullName()
		userName()
		email()
	}
}
