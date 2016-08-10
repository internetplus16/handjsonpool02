<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
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
		<a href="#create-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<!--<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/')}">
				<g:message code="default.home.label"/></a>-->
		<g:if test="${session?.user?.admin}">
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/project/index')}">
				<span class=""></span><g:message code="default.list.label" args="[entityName]" /></a>	
		</g:if>	
		<div id="create-project" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${projectInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${projectInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:projectInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset >
					<g:submitButton name="create" class="btn btn-default" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</div>
	</body>
</html>
