
<%@ page import="diary.Author" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'author.label', default: 'Author')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-author" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-author" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list author">
			
				<g:if test="${authorInstance?.entries}">
				<li class="fieldcontain">
					<span id="entries-label" class="property-label"><g:message code="author.entries.label" default="Entries" /></span>
					
						<g:each in="${authorInstance.entries}" var="e">
						<span class="property-value" aria-labelledby="entries-label"><g:link controller="entry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="author.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${authorInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="author.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${authorInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.middleName}">
				<li class="fieldcontain">
					<span id="middleName-label" class="property-label"><g:message code="author.middleName.label" default="Middle Name" /></span>
					
						<span class="property-value" aria-labelledby="middleName-label"><g:fieldValue bean="${authorInstance}" field="middleName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="author.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${authorInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${authorInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="author.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${authorInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:authorInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${authorInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
