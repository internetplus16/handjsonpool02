<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<style>
			.btn btn-default btn-lg  a{
				font-family:italic;
			}
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
		<a href="#create-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		
			<!--<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/')}">
				<span class=""></span><g:message code="default.home.label"/></a>-->
		<g:if test="${session?.user?.admin}">
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/user')}">
				<span class=""></span><g:message code="default.list.label" args="[entityName]" /></a>
		</g:if>	
			
		<div id="create-user" class="content scaffold-create" role="main">
			<h1>Registration</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userInstance}" var="error">
					<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:userInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="btn btn-default">
					<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
	</body>
</html>
