package handjsonpool02

class LoginFilters {

    def filters = {
		all(controller:"admin",action:"index"){
			before={
				if(!session?.user?.admin){
					redirect(controller:"user",action:"login")
					flash.message="Sorry,admin only!"
					return false
				}
			}
		}
		all(controller:"user",action:"index"){
			before={
				if(!session?.user?.admin){
					redirect(controller:"user",action:"login")
					flash.message="Sorry,admin only!"
					return false
				}
			}
		}
		all(controller:"user",action:"show"){
			before={
				if(!session.user){
					redirect(controller:"user",action:"login")
					flash.message="Sorry,you must login first!"
					return false
				}
			}
		}
		all(controller:"user",action:"login"){
			before={
				if(session.user){
					redirect(url:"/")
					flash.message="Sorry,you need logout first!"
					return false
				}
			}
		}
	}
}
