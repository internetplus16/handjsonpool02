<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'json.label', default: 'Json')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<style>
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
		<a href="#create-json" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<!--<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a>-->
		<g:if test="${session?.user?.admin}">
			<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/json')}">
				<span class=""></span><g:message code="default.list.label" args="[entityName]" /></a>	
		</g:if>		
		<div id="create-json" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${jsonInstance}">
				<ul class="errors" role="alert">
					<g:eachError bean="${jsonInstance}" var="error">
						
					</g:eachError>
				</ul>
			</g:hasErrors>
			<g:form url="[resource:jsonInstance, action:'save']" >
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
