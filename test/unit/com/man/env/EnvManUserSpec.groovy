package com.man.env

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(EnvManUser)
class EnvManUserSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test toString"() {
		when: "a user has a fullname"
			def envManUser = new EnvManUser(fullName: 'John Doe',
						userName: 'jdoe',
						password: 't0ps3cr3t',
						email: 'jdoe@johnsgroovyshop.com')
		
		then: "the toString method will return the fullname"
			envManUser.toString() == 'John Doe'
    }
}
