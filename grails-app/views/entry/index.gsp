
<%@ page import="diary.Entry" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'entry.label', default: 'Entry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-entry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-entry" class="content scaffold-list" role="main">
			<h1><g:message code="my.entries.label" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="title" title="${message(code: 'entry.title.label', default: 'Title')}" />
					
						<g:sortableColumn property="text" title="${entityName}" />
					
						<g:sortableColumn property="createDate" title="${message(code: 'entry.createDate.label', default: 'Create Date')}" />
					
						<g:sortableColumn property="updateDate" title="${message(code: 'entry.updateDate.label', default: 'Update Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${entryInstanceList}" status="i" var="entryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${entryInstance.id}">${fieldValue(bean: entryInstance, field: "title")}</g:link></td>
					
						<td>${fieldValue(bean: entryInstance, field: "text")}</td>
					
						<td><g:formatDate date="${entryInstance.createDate}" /></td>
					
						<td><g:formatDate date="${entryInstance.updateDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${entryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
