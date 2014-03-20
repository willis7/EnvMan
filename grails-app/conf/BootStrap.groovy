import com.man.env.Booking
import com.man.env.User
import com.man.env.Environment

class BootStrap {

    def init = { servletContext ->
		
		def user1 = new User(fullName: 'John Doe',
						userName: 'jdoe',
						password: 't0ps3cr3t',
						email: 'jdoe@johnsgroovyshop.com')
		user1.save()
		
		def user2 = new User(fullName: 'John Deere',
						userName: 'tractorman',
						password: 't0ps3cr3t',
						email: 'john.deere@porkproducers.org')
		user2.save()	
						
		def env1 = new Environment(name: 'ORCA_CLIENT_DEV',
							description: '''ORCA UI Development environment''',
							url: 'http://www.groovy.porkproducers.org',
							phaseUsage: 'dev',
							status: 'utilized')
		env1.save()
    }
    def destroy = {
    }
}
