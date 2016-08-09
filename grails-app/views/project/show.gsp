
<%@ page import="com.hand.handjsonpool02.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<style>
			.btn btn-default btn-lg  a{
				font-family:italic;
			}
			.btn:hover {
				background-color:#337ab7;
				color:#FFF;
			}
			.btn-default{
				color:#337ab7;
				font-weight:bolder;
			}
		</style>
	</head>
	<body>
	<div class="container">
		<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/')}">
				<span class=""></span><g:message code="default.home.label"/></a>
				
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/project')}">
				<span class=""></span><g:message code="default.list.label" args="[entityName]" /></a>
				
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/project/create')}">
				<span class=""></span><g:message code="default.new.label" args="[entityName]" /></a>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.projectName}">
				<li class="fieldcontain">
					<span id="projectName-label" class="property-label"><g:message code="project.projectName.label" default="Project Name" /></span>
					
						<span class="property-value" aria-labelledby="projectName-label"><g:fieldValue bean="${projectInstance}" field="projectName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="project.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${projectInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="project.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${projectInstance?.user?.id}">${projectInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="project.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${projectInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="project.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${projectInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.jsons}">
				<li class="fieldcontain">
					<span id="jsons-label" class="property-label"><g:message code="project.jsons.label" default="Jsons" /></span>
					
						<g:each in="${projectInstance.jsons}" var="j">
						<span class="property-value" aria-labelledby="jsons-label"><g:link controller="json" action="show" id="${j.id}">${j?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			
			<g:if test="${session.user.toString()==projectInstance.user.toString()}">
				<g:form url="[resource:projectInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons">
						<g:link class="edit" action="edit" resource="${projectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</fieldset>
				</g:form>
			</g:if>
		</div>
	</div>
	</body>
</html>
