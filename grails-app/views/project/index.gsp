
<%@ page import="com.hand.handjsonpool02.Project" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style>
			#ha{
				width:80%;
				float:left;
			}
			#ba{
				width:15%;
				float:left;
			}
			#ba button{
				margin-top:1px;
			}
			.nav2{
				width:700px;
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
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav2" role="navigation">
			<div id="up">
				<div id="ha">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
				</div>
				<div id="ba">
					<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/project/create')}">
						<span class=""></span><g:message code="default.new.label" args="[entityName]" /></a>
				
					<!--	<div id="list-user" class="content scaffold-list" role="main">  -->
				</div>
			
			</div>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="projectName" title="${message(code: 'project.projectName.label', default: 'Project Name')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'project.description.label', default: 'Description')}" />
					
						<th><g:message code="project.user.label" default="User" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'project.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'project.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
					<g:each in="${projectInstanceList}" status="i" var="projectInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
							<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "projectName")}</g:link></td>
						
							<td>${fieldValue(bean: projectInstance, field: "description")}</td>
						
							<td>${fieldValue(bean: projectInstance, field: "user")}</td>
						
							<td><g:formatDate date="${projectInstance.dateCreated}" /></td>
						
							<td><g:formatDate date="${projectInstance.lastUpdated}" /></td>
						
						</tr>
					</g:each>
				</tbody>
			</table>
				<div class="pagination">
					<g:paginate total="${projectInstanceCount ?: 0}" />
				</div>
		</div>
	</div>	
	</body>
</html>
