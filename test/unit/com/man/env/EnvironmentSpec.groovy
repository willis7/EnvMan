package com.man.env

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Environment)
class EnvironmentSpec extends Specification {
	
	User userMock = Mock()

    def setup() {
    }

    def cleanup() {
    }

    void "test toString"() {			
		when: "a user has a name and phaseUsage"
			def env1 = new Environment(name: 'ORCA_CLIENT',
					description: '''ORCA UI Development environment''',
					owner: userMock,
					url: 'www.groovy.porkproducers.org',
					phaseUsage: 'dev',
					status: 'utilized')
		
		then: "the toString method will return the name and phaseUsage combined"
			env1.toString() == "ORCA_CLIENT:dev"
    }
}
