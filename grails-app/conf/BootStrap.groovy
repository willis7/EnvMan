import com.man.env.EnvManUser
import com.man.env.Environment

class BootStrap {

    def init = { servletContext ->
		
		new EnvManUser(fullName: 'John Doe',
						userName: 'jdoe',
						password: 't0ps3cr3t',
						email: 'jdoe@johnsgroovyshop.com').save()
		
		new EnvManUser(fullName: 'John Deere',
						userName: 'tractorman',
						password: 't0ps3cr3t',
						email: 'john.deere@porkproducers.org').save()
						
						
		def env1 = new Environment(name: 'ORCA_CLIENT_DEV',
							description: '''ORCA UI Development environment''',
							owner: EnvManUser.findByFullName('John Deere'),
							url: 'www.groovy.porkproducers.org',
							phaseUsage: 'dev',
							status: 'utilized').save()
			
    }
    def destroy = {
    }
}
