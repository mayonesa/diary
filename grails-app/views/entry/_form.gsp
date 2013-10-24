<%@ page import="diary.Entry" %>



<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="entry.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${entryInstance?.title}" length="30" />
</div>

<div class="fieldcontain ${hasErrors(bean: entryInstance, field: 'text', 'error')} ">
	<label for="Entry">
		<g:message code="entry.text.label" default="Content" />
		
	</label>
	<g:textArea name="text" value="${entryInstance?.text}"/>
</div>
