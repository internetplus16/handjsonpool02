
<%@ page import="com.hand.handjsonpool02.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
	
		
		
			<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<g:if test="${session?.user?.admin}">
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/')}">
				<span class=""></span><g:message code="default.home.label"/></a>
				
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/user')}">
				<span class=""></span><g:message code="default.list.label" args="[entityName]" /></a>
				
			<!--<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/user/create')}">
				<span class=""></span><g:message code="default.new.label" args="[entityName]" /></a>
			
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			-->
		</g:if>	
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.loginName}">
				<li class="fieldcontain">
					<span id="loginName-label" class="property-label"><g:message code="user.loginName.label" default="Login Name" /></span>
					
						<span class="property-value" aria-labelledby="loginName-label"><g:fieldValue bean="${userInstance}" field="loginName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="user.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${userInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="user.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${userInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="user.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${userInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="user.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${userInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.projects}">
				<li class="fieldcontain">
					<span id="projects-label" class="property-label"><g:message code="user.projects.label" default="Projects" /></span>
					
						<g:each in="${userInstance.projects}" var="p">
						<span class="property-value" aria-labelledby="projects-label"><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			
			
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:if test="${session.user.toString()==userInstance.loginName}">
						<g:link class="edit" action="edit" resource="${userInstance}">Change Password</g:link>
					</g:if>
					<g:if test="${session?.user?.admin}">
						<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</g:if>
				</fieldset>
			</g:form>
			
		</div>
	</div>
	</body>
</html>
