<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome Admin</title>
		<style>
			#page-body{
				width:50%;
				height:430px;
				margin:10px auto;
				padding:30px;
			}
			.controllers{
				list-style-type:none;
				width:300px;
				height:50px;
				margin:0 auto;
			}
			.controllers li{
				width:300px;
				height:50px;
				background:#dddddd;
				text-align:center;
				border-spacing:2px;
			}
			.controllers li a{
				line-height:50px;
				display:block;
				text-decoration:none;
				font-size:18px;
			}
			.controllers li a:hover{
				background:#cceeff;
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="container">
			<div id="page-body">
					<ul class="controllers">
						<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
							<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.logicalPropertyName}</g:link></li>
						</g:each>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
