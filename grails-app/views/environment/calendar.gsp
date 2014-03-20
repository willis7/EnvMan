<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>

<link href="${resource(dir: 'css', file: 'fullcalendar/fullcalendar.css')}" rel='stylesheet' />
<link href="${resource(dir: 'css', file: 'fullcalendar/fullcalendar.print.css')}" rel='stylesheet' />
<script src="${resource(dir: 'js', file: 'lib/moment.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'lib/jquery.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'lib/jquery-ui.custom.min.js')}"></script>
<script src="${resource(dir: 'js', file: 'fullcalendar/fullcalendar.min.js')}"></script>

<script>

	$(document).ready(function() {

		$('#calendar').fullCalendar({
			defaultDate: '2014-01-12',
			editable: true,
			events: [
				{
					title: 'All Day Event',
					start: '2014-01-01'
				},
				{
					title: 'Long Event',
					start: '2014-01-07',
					end: '2014-01-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2014-01-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2014-01-16T16:00:00'
				},
				{
					title: 'Meeting',
					start: '2014-01-12T10:30:00',
					end: '2014-01-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2014-01-12T12:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2014-01-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2014-01-28'
				}
			]
		});
		
	});

</script>


<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <div id='calendar'></div>
  
  </div>
</body>
</html>