<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>EnvMan - Test Environment Manager</title>
	</head>
	<body>
		<body>
			<div id="welcome">
				<br />
				<h3>Welcome to EnvMan</h3>
				<p>EnvMan is a tool dedicated to assisting in test environment tracking
					and booking.</p>
			</div>
			<div class="homeCell">
				<h3>Find an Environment</h3>
				<p> See if there's a technical event in the works that strikes your
					fancy. If there is, you can volunteer to help or just let the
					organizers know that you'd be interested in attending.
					Everybody has a role to play.</p>
				<span class="buttons" >
					<g:link controller="environment" action="index">Find an Environment</g:link>
				</span>
			</div>
			<div class="homeCell">
				<h3>Make a Booking</h3>
				<p>If you don't see anything that suits your interest and location,
					then why not get the ball rolling. It's easy to get started and
					there may be others out there ready to get behind you to make it
					happen.</p>
				<span class="buttons" >
					<g:link controller="booking" action="create"> Book an environment</g:link>
				</span>
			</div>
			<div class="homeCell">
				<h3>Add a new Environment</h3>
				<p>If you are part of a business or organization that is involved in
					technology then sponsoring a tek event would be a great way to
					let the community know that you're there and you're involved.</p>
				<span class="buttons" >
					<g:link controller="environment" action="create">Add a new Environment</g:link>
				</span>
			</div>
	</body>
</html>
