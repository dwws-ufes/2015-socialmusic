<%@ page import="br.com.ufes.dwws.socialMusic.Music" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'music.label', default: 'Music')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-music" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="index"><g:message code="music.edit.listbutton"/></g:link></li>
				<li><g:link class="create" action="create"><g:message code="music.edit.newbutton"/></g:link></li>
			</ul>
		</div>
		<div id="edit-music" class="content scaffold-edit" role="main">
			<h1><g:message code="music.edit.label"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${musicInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${musicInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:musicInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${musicInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code:'default.music.editform.saveButton')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
