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

				def wyd=new com.hand.handjsonpool02.User(
						loginName:"wyd",
						password:"wyd",
						phone:"12345678",
				)
				wyd.save()
				if(wyd.hasErrors()){
					println wyd.errors
				}

				def lr=new com.hand.handjsonpool02.User(
						loginName: "lr",
						password: "lr",
						phone: "245678933",
				)
				lr.save()
				if(lr.hasErrors()){
					println lr.errors
				}

				def lh=new com.hand.handjsonpool02.User(
						loginName: "lh",
						password: "lh",
						phone: "667328282",
				)
				lh.save()
				if(lh.hasErrors()){
					println lh.errors
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

				def pro4=new com.hand.handjsonpool02.Project(
						projectName: "pro4",
						description: "wonderful",
						user: wyd
				)
				pro4.save()
				if(pro4.hasErrors()){
					println pro4.errors
				}

				def pro5=new com.hand.handjsonpool02.Project(
						projectName: "pro5",
						description: "difficult",
						user: lh

				)
				pro5.save()
				if (pro5.hasErrors()){
					println pro5.errors
				}

				def pro6=new com.hand.handjsonpool02.Project(
						projectName: "pro6",
						description: "shabi",
						user: lr
				)
				pro6.save()
				if (pro6.hasErrors()){
					println pro6.errors
				}

				def data1=new com.hand.handjsonpool02.Json(
					placeholderUrl:"http://localhost:8080/handjsonpool02/json/pro1/Jane/PUT",
					method:"PUT",
					jsonData: """{"userId": 1,"id": 1,"title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit"}""",
					project:pro1
				)
				data1.save()
				if(data1.hasErrors()){
					println data1.errors
				}
				
				def data2=new com.hand.handjsonpool02.Json(
					placeholderUrl:"http://localhost:8080/handjsonpool02/json/pro2/Doe/GET",
					method:"GET",
					jsonData:"""{"userId": 2,"id": 16,"title": "sint suscipit perspiciatis velit dolorum rerum ipsa laboriosam odio"}""",
					project:pro2
				)
				data2.save()
				if(data2.hasErrors()){
					println data2.errors
				}
				
				def data3=new com.hand.handjsonpool02.Json(
					placeholderUrl:"http://localhost:8080/handjsonpool02/json/pro3/Doe/GET",
					method:"GET",
					jsonData:"""{"userId": 3,"id": 24,"title": "autem hic labore sunt dolores incidunt"}""",
					project:pro3
				)
				data3.save()
				if(data2.hasErrors()){
					println data3.errors
				}
				
				def data4=new com.hand.handjsonpool02.Json(
					placeholderUrl:"http://localhost:8080/handjsonpool02/json/pro1/Jane/DELETE",
					method:"DELETE",
					jsonData:"""{"userId": 1,"id": 9,"title": "nesciunt iure omnis dolorem tempora et accusantium"}""",
					project:pro1
				)
				data4.save()
				if(data2.hasErrors()){
					println data4.errors
				}
				
				def data5=new com.hand.handjsonpool02.Json(
					placeholderUrl:"http://localhost:8080/handjsonpool02/json/pro3/Doe/DELETE",
					method:"DELETE",
					jsonData:"""{"userId": 3,"id": 30,"title": "a quo magni similique perferendis"}""",
					project:pro3
				)
				data5.save()
				if(data5.hasErrors()){
					println data5.errors
				}

				def data6=new com.hand.handjsonpool02.Json(
						placeholderUrl: "http://localhost:8080/handjsonpool02/json/pro4/wyd/POST",
						method: "POST",
						jsonData: """{"userId": 2,"id": 12,"title": "consequatur autem doloribus natus consectetur"}""",
						project: pro4
				)
				data6.save()
				if (data6.hasErrors()){
					println data6.errors
				}

				def data7=new com.hand.handjsonpool02.Json(
						placeholderUrl: "http://localhost:8080/handjsonpool02/json/pro4/wyd/PUT",
						method: "PUT",
						jsonData: """{"userId": 2,"id": 19,"title": "velit pariatur quaerat similique libero omnis quia"}""",
						project: pro4
				)
				data7.save()
				if (data7.hasErrors()){
					println data7.errors
				}

				def data8=new com.hand.handjsonpool02.Json(
						placeholderUrl: "http://localhost:8080/handjsonpool02/json/pro5/lh/POST",
						method: "POST",
						jsonData: """{"userId": 3,"id": 27,"title": "id non nostrum expedita"}""",
						project: pro5
				)
				data8.save()
				if (data8.hasErrors()){
					println data8.errors
				}

				def data9=new com.hand.handjsonpool02.Json(
						placeholderUrl: "http://localhost:8080/handjsonpool02/json/pro5/lh/GET",
						method: "GET",
						jsonData: """{"albumId": 1,"id": 4,"title": "culpa odio esse rerum omnis laboriosam voluptate repudiandae","url": "http://placehold.it/600/d32776","thumbnailUrl": "http://placehold.it/150/39e985"}""",
						project: pro5
				)
				data9.save()
				if (data9.hasErrors()){
					println data8.errors
				}

				def data10=new com.hand.handjsonpool02.Json(
						placeholderUrl: "http://localhost:8080/handjsonpool02/json/pro4/wyd/GET",
						method: "GET",
						jsonData: """{"userId": 8,"id": 73,"title": "consequuntur deleniti eos quia temporibus ab aliquid at"}""",
						project: pro4
				)
				data10.save()
				if (data10.hasErrors()){
					println data10.errors
				}

				def data11=new com.hand.handjsonpool02.Json(
						placeholderUrl: "http://localhost:8080/handjsonpool02/json/pro6/lr/POST",
						method: "POST",
						jsonData: """{"userId": 9,"id": 82,"title": "laudantium voluptate suscipit sunt enim enim"}""",
						project: pro6
				)
				data11.save()
				if (data11.hasErrors()){
					println data11.errors
				}

				break
			case"production":break
		}
		}
	def destroy = {
	
    }
}