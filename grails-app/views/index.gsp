<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Hand Json Pool</title>
		<link href="${resource(dir:'css',file:'bootstrap.css')}" rel="stylesheet" />
		<link href="${resource(dir:'css',file:'bootstrap.min.css')}" rel="stylesheet" />
		<link href="${resource(dir:'css',file:'jumbotron-narrow.css')}" rel="stylesheet" />
		<style type="text/css" media="screen">
			body{
				  margin: 0 auto;
				  //background:#DCDCDC;
			}
			h1.thicker{
				font-weight:900;
				font-size:50px;
			}
			.btn-success{
				background-color:#337ab7;
				border-color:#2e6da4;
			}
			.btn-success:hover {
				background-color:#2e6da4;
				border-color:#337ab7;
			}
			.btn-sub{
				wiith:60px;
				height:33px;
				border-radius:5px;
				background:#337ab7;
				color:#ffffff;
			}
			.btn-sub:hover{
				background:#2e6da4;
			}
		</style>
	</head>
<body>
	
	<div class="container">
	
		<div class="jumbotron">
				<span class="glyphicon glyphicon-ice-lolly-tasted" ></span>
				<h1>Hand Json Pool</h1>
				<p class="lead">The handjsonpool is a wonderful tool to help you obtain and store json data.Just type the URL and click the "enter",you'll get it.It's easy to use,come on to register and you'll fall into the pool.</p>
				<p><a class="btn btn-lg btn-success" href="${createLink(uri: '/user/login')}" role="button">Sign up today</a></p>
				<p class="text-muted" style="font-size:18px;">
					You can input your url below,then you`ll get your json data.<br>For example:http://www.baidu.com.
				</p>
				<g:form controller="user" action="sub" class="form-inline" method="post">
					<input type="text" class="form-control" placeholder="Your url" style="width:500px;" name="urll"> 
					<input type="submit" value="Submit" class="btn-sub"/>
				</g:form>
		</div>
	</div> 
</body>
</html>
