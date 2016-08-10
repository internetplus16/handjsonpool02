
<%@ page import="com.hand.handjsonpool02.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
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
			.nav1{
				width:700px;
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
	<div	class="container">
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav1" role="navigation">
			<div id="up">
				<div id="hh">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
					<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
					</g:if>
				</div>
				<div id="bb">
					<a type="button" class="btn btn-default btn-lg" href="${createLink(uri: '/user/create')}">
						<span class=""></span><g:message code="default.new.label" args="[entityName]" /></a>
				
					<!--	<div id="list-user" class="content scaffold-list" role="main">  -->
				</div>
			
			</div>
			
			
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			
			<table>
			<thead>
					<tr>
						<g:sortableColumn property="loginName" title="${message(code: 'user.loginName.label', default: 'Login Name')}" />
						<g:sortableColumn property="password" title="${message(code: 'user.password.label', default: 'Password')}" />
						<g:sortableColumn property="phone" title="${message(code: 'user.phone.label', default: 'Phone')}" />
						<g:sortableColumn property="dateCreated" title="${message(code: 'user.dateCreated.label', default: 'Date Created')}" />
						<g:sortableColumn property="lastUpdated" title="${message(code: 'user.lastUpdated.label', default: 'Last Updated')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "loginName")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "password")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "phone")}</td>
					
						<td><g:formatDate date="${userInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${userInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</div>
	</body>
</html>
