<%@ page import="com.man.env.Booking" %>



<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'env', 'error')} required">
	<label for="env">
		<g:message code="booking.env.label" default="Env" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="env" name="env.id" from="${com.man.env.Environment.list()}" optionKey="id" required="" value="${bookingInstance?.env?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'pm', 'error')} required">
	<label for="pm">
		<g:message code="booking.pm.label" default="Pm" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pm" name="pm.id" from="${com.man.env.User.list()}" optionKey="id" required="" value="${bookingInstance?.pm?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'reservedFrom', 'error')} required">
	<label for="reservedFrom">
		<g:message code="booking.reservedFrom.label" default="Reserved From" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="reservedFrom" precision="day"  value="${bookingInstance?.reservedFrom}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'reservedTo', 'error')} required">
	<label for="reservedTo">
		<g:message code="booking.reservedTo.label" default="Reserved To" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="reservedTo" precision="day"  value="${bookingInstance?.reservedTo}"  />
</div>

