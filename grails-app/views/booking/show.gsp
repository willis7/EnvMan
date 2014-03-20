
<%@ page import="com.man.env.Booking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'booking.label', default: 'Booking')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-booking" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-booking" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list booking">
			
				<g:if test="${bookingInstance?.env}">
				<li class="fieldcontain">
					<span id="env-label" class="property-label"><g:message code="booking.env.label" default="Env" /></span>
					
						<span class="property-value" aria-labelledby="env-label"><g:link controller="environment" action="show" id="${bookingInstance?.env?.id}">${bookingInstance?.env?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.pm}">
				<li class="fieldcontain">
					<span id="pm-label" class="property-label"><g:message code="booking.pm.label" default="Pm" /></span>
					
						<span class="property-value" aria-labelledby="pm-label"><g:link controller="user" action="show" id="${bookingInstance?.pm?.id}">${bookingInstance?.pm?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.reservedFrom}">
				<li class="fieldcontain">
					<span id="reservedFrom-label" class="property-label"><g:message code="booking.reservedFrom.label" default="Reserved From" /></span>
					
						<span class="property-value" aria-labelledby="reservedFrom-label"><g:formatDate format="dd/MM/yyyy" date="${bookingInstance?.reservedFrom}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.reservedTo}">
				<li class="fieldcontain">
					<span id="reservedTo-label" class="property-label"><g:message code="booking.reservedTo.label" default="Reserved To" /></span>
					
						<span class="property-value" aria-labelledby="reservedTo-label"><g:formatDate format="dd/MM/yyyy" date="${bookingInstance?.reservedTo}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bookingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bookingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
