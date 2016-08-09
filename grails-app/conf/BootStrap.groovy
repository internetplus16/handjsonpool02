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
				
				def admin=new com.hand.handjsonpool02.User(
					loginName:"admin",
					password:"admin",
					phone:"12345678",
					role:"admin",
				)
				admin.save()
				if(admin.hasErrors()){
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
				
				def pro2=new com.hand.handjsonpool02.Project(
					projectName:"pro2",
					description:"locate in LA",
					user:doe
				)
				pro2.save()
				if(pro2.hasErrors()){
					println pro2.errors
				}
				
				def pro3=new com.hand.handjsonpool02.Project(
					projectName:"pro3",
					description:"locate in DC",
					user:doe
				)
				pro3.save()
				if(pro3.hasErrors()){
					println pro3.errors
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
				
				def data2=new com.hand.handjsonpool02.Json(
					placeholderUrl:"www.baidu.com",
					method:"GET",
					jsonData:"as you said",
					project:pro2
				)
				data2.save()
				if(data2.hasErrors()){
					println data2.errors
				}
				
				def data3=new com.hand.handjsonpool02.Json(
					placeholderUrl:"www.baidu.com",
					method:"GET",
					jsonData:"as you said",
					project:pro3
				)
				data3.save()
				if(data2.hasErrors()){
					println data3.errors
				}
				
				def data4=new com.hand.handjsonpool02.Json(
					placeholderUrl:"www.baidu.com",
					method:"DELETE",
					jsonData:"as you said",
					project:pro1
				)
				data4.save()
				if(data2.hasErrors()){
					println data4.errors
				}
				
				def data5=new com.hand.handjsonpool02.Json(
					placeholderUrl:"www.baidu.com",
					method:"DELETE",
					jsonData:"as you said",
					project:pro3
				)
				data5.save()
				if(data5.hasErrors()){
					println data5.errors
				}
				
				break
			case"production":break
		}
		}
	def destroy = {
	
    }
}