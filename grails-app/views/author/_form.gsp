<%@ page import="diary.Author" %>



<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'entries', 'error')} ">
	<label for="entries">
		<g:message code="author.entries.label" default="Entries" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${authorInstance?.entries?}" var="e">
    <li><g:link controller="entry" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="entry" action="create" params="['author.id': authorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'entry.label', default: 'Entry')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="author.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${authorInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="author.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${authorInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'middleName', 'error')} ">
	<label for="middleName">
		<g:message code="author.middleName.label" default="Middle Name" />
		
	</label>
	<g:textField name="middleName" value="${authorInstance?.middleName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'password', 'error')} ">
	<label for="password">
		<g:message code="author.password.label" default="Password" />
		
	</label>
	<g:textField name="password" value="${authorInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: authorInstance, field: 'username', 'error')} ">
	<label for="username">
		<g:message code="author.username.label" default="Username" />
		
	</label>
	<g:textField name="username" value="${authorInstance?.username}"/>
</div>

