<!DOCTYPE html>
<div class="container">
	<div id="header">
		<div  class="header clearfix">
			<nav>
				  <a href="http://www.hand-china.com"><img src="${resource(dir:'images',file:'logo.png')}" width="200px" height="60px"></a>
				  <ul class="nav nav-pills">
				  <li role="presentation" ><a href="${resource(dir:'')}"  >Home</a></li>
				  <li role="presentation" >
				  
				  <g:loginControl />
					<ul>
						<li>
							<g:logoutControl/>
						</li>
					</ul>
				  </li>
				  <li role="presentation" ><a href="${resource(dir:'/user/create')}" >Register</a></li>
			  </ul>
			</nav>
	      </div>
	</div>
</div>