import grails.util.GrailsUtil

class BootStrap {
    def init = { servletContext ->
		switch(GrailsUtil.environment){
			case"development":
				def jane=new com.hand.handjsonpool02.User(
					loginName:"Jane",
					password:"jane",
					phone:"12345678",
				)
				jane.save()
				if(jane.hasErrors()){
					println jane.errors
				}
				
				def doe=new com.hand.handjsonpool02.User(
					loginName:"Doe",
					password:"doe",
					phone:"22345678",
				)
				doe.save()
				if(doe.hasErrors()){
					println doe.errors
				}
				
				def pro1=new com.hand.handjsonpool02.Project(
					projectName:"pro1",
					description:"locate in SH",
					user:jane
				)
				pro1.save()
				if(pro1.hasErrors()){
					println pro1.errors
				}
				
				def data1=new com.hand.handjsonpool02.Json(
					placeholderUrl:"www.baidu.com",
					method:"PUT",
					jsonData:"as we said",
					project:pro1
				)
				data1.save()
				if(data1.hasErrors()){
					println data1.errors
				}
				break
			case"production":break
		}
		}
	def destroy = {
	
    }
}