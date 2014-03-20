package com.man.env

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test toString"() {
		when: "a user has a fullname"
			def u1 = new User(fullName: 'John Doe',
						userName: 'jdoe',
						password: 't0ps3cr3t',
						email: 'jdoe@johnsgroovyshop.com')
		
		then: "the toString method will return the fullname"
			u1.toString() == 'John Doe'
    }
}
