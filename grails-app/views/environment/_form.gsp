<%@ page import="com.man.env.Environment" %>



<div class="fieldcontain ${hasErrors(bean: environmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="environment.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="150" required="" value="${environmentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: environmentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="environment.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="5000" value="${environmentInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: environmentInstance, field: 'url', 'error')} ">
	<label for="url">
		<g:message code="environment.url.label" default="Url" />
		
	</label>
	<g:field type="url" name="url" value="${environmentInstance?.url}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: environmentInstance, field: 'phaseUsage', 'error')} ">
	<label for="phaseUsage">
		<g:message code="environment.phaseUsage.label" default="Phase Usage" />
		
	</label>
	<g:select name="phaseUsage" from="${environmentInstance.constraints.phaseUsage.inList}" value="${environmentInstance?.phaseUsage}" valueMessagePrefix="environment.phaseUsage" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: environmentInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="environment.status.label" default="Status" />
		
	</label>
	<g:select name="status" from="${environmentInstance.constraints.status.inList}" value="${environmentInstance?.status}" valueMessagePrefix="environment.status" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: environmentInstance, field: 'bookings', 'error')} ">
	<label for="bookings">
		<g:message code="environment.bookings.label" default="Bookings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${environmentInstance?.bookings?}" var="b">
    <li><g:link controller="booking" action="show" id="${b.id}">${b?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="booking" action="create" params="['environment.id': environmentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'booking.label', default: 'Booking')])}</g:link>
</li>
</ul>

</div>

