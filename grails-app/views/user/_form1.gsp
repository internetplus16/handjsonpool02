<%@ page import="com.hand.handjsonpool02.User" %>


<!--
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'loginName', 'error')} required">
	<label for="loginName">
		<g:message code="user.loginName.label" default="Login Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="loginName" maxlength="20" required="" value="${userInstance?.loginName}"/>

</div>
-->

<div class="fieldcontain">
	<label>
			Old Password
			<span class="required-indicator">*</span>
	</label>
	<input type="password" name="oldPassword"/>
</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="New Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" />

</div>

<div class="fieldcontain">
	<label>
			Confirm Password
			<span class="required-indicator">*</span>
	</label>
	<input type="password" name="confirmPassword"/>
</div>

<!--
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="user.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" maxlength="15" required="" value="${userInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'projects', 'error')} ">
	<label for="projects">
		<g:message code="user.projects.label" default="Projects" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.projects?}" var="p">
    <li><g:link controller="project" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="project" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'project.label', default: 'Project')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="user.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="role" required="" value="${userInstance?.role}"/>

</div>
-->
