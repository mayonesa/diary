
<%@ page import="diary.Entry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entry.label', default: 'Entry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-entry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-entry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list entry">			
				<g:if test="${entryInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="entry.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${entryInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entryInstance?.text}">
				<li class="fieldcontain">
					<span id="text-label" class="property-label"><g:message code="entry.text.label" default="Content" /></span>
					
						<span class="property-value" aria-labelledby="text-label"><g:fieldValue bean="${entryInstance}" field="text"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${entryInstance?.createDate}">
				<li class="fieldcontain">
					<span id="createDate-label" class="property-label"><g:message code="entry.createDate.label" default="Create Date" /></span>
					
						<span class="property-value" aria-labelledby="createDate-label"><g:formatDate date="${entryInstance?.createDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${entryInstance?.updateDate}">
				<li class="fieldcontain">
					<span id="updateDate-label" class="property-label"><g:message code="entry.updateDate.label" default="Update Date" /></span>
					
						<span class="property-value" aria-labelledby="updateDate-label"><g:formatDate date="${entryInstance?.updateDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:entryInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${entryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
