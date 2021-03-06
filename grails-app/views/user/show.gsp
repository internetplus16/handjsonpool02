
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
			<!--<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/')}">
				<span class=""></span><g:message code="default.home.label"/></a>-->
				
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/user')}">
				<span class=""></span><g:message code="default.list.label" args="[entityName]" /></a>
				
			<!--<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/user/create')}">
				<span class=""></span><g:message code="default.new.label" args="[entityName]" /></a>
			
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			-->
		</g:if>	
		
		<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/project')}">Project List</a>
		
		<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/json')}">Json List</a>
		
		<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/json/create')}" style="float:right">New Json</a>
		
		<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/project/create')}" style="float:right">New Project</a>
		
		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
			
		<div id="show-user" class="content scaffold-show" role="main">
			
			<g:if test="${!(session?.user?.admin && userInstance.role=="admin")}">
				<h1>Projects</h1>
				<ol class="property-list user" style="font-size:16px;">
					<g:if test="${userInstance?.projects}">
					<li class="fieldcontain"style="font-size:16px;">
						<!--<span id="projects-label" class="property-label"><g:message code="user.projects.label" default="Projects" /></span>-->
						
							<g:each in="${userInstance.projects}" var="p" >
							<span class="property-value" aria-labelledby="projects-label"><g:link class="btn" controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
							</g:each>
						
					</li>
					</g:if>
				</ol>
			</g:if>
			
			<g:if test="${session?.user?.admin && userInstance.role=="admin"}">
				<h1>Admin</h1>
				<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/admin')}" style="margin-left:230px;margin-top:10px;">Entry for Admin Center</a>
			</g:if>
			
			<h1>Details</h1>
			
			<ol class="property-list user">
			
				<g:if test="${userInstance?.loginName}">
				<li class="fieldcontain">
					<span id="loginName-label" class="property-label"><g:message code="user.loginName.label" default="Login Name" /></span>
					
						<span class="property-value" aria-labelledby="loginName-label"><g:fieldValue bean="${userInstance}" field="loginName"/></span>
					
				</li>
				</g:if>
				
				<g:if test="${session.user.toString()==userInstance.loginName}">
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
				
			</ol>
			
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset >
					<g:if test="${session.user.toString()==userInstance.loginName}">
						<g:link class="btn btn-default" action="edit" resource="${userInstance}">Change Password</g:link>
					</g:if>
					<g:if test="${session?.user?.admin && userInstance.role!="admin"}">
						<g:actionSubmit class="btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
					</g:if>
				</fieldset>
			</g:form>
			
			
			
			
			
			
			
		</div>
	</div>
	</body>
</html>
