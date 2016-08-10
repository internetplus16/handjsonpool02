
<%@ page import="com.hand.handjsonpool02.Json" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'json.label', default: 'Json')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style>
			#hh{
				width:80%;
				float:left;
			}
			#bb{
				width:15%;
				float:left;
			}
			#bb button{
				margin-top:1px;
			}
			.btn:hover {
				background-color:#337ab7;
				color:#FFF;
			}
			.btn-default{
				color:#337ab7;
				font-weight:bolder;
			}
			.nav a{
				color:#337ab7;
			}
		</style>
	</head>
	<body>
	<div class="container">
		<a href="#list-json" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<div id="up">
				<div id="hh">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
				</div>
				<div id="bb">
					<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/json/create')}">
						<span class=""></span><g:message code="default.new.label" args="[entityName]" /></a>
				
					<!--	<div id="list-user" class="content scaffold-list" role="main">  -->
				</div>
			
			</div>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="placeholderUrl" title="${message(code: 'json.placeholderUrl.label', default: 'Placeholder Url')}" />
					
						<g:sortableColumn property="method" title="${message(code: 'json.method.label', default: 'Method')}" />
					
						<g:sortableColumn property="jsonData" title="${message(code: 'json.jsonData.label', default: 'Json Data')}" />
					
						<th><g:message code="json.project.label" default="Project" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'json.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'json.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${jsonInstanceList}" status="i" var="jsonInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${jsonInstance.id}">${fieldValue(bean: jsonInstance, field: "placeholderUrl")}</g:link></td>
					
						<td>${fieldValue(bean: jsonInstance, field: "method")}</td>
					
						<td>${fieldValue(bean: jsonInstance, field: "jsonData")}</td>
					
						<td>${fieldValue(bean: jsonInstance, field: "project")}</td>
					
						<td><g:formatDate date="${jsonInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${jsonInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<!--<div class="pagination">
				<g:paginate total="${jsonInstanceCount ?: 0}" />
			</div>
			-->
		</div>
	</div>
	</body>
</html>
