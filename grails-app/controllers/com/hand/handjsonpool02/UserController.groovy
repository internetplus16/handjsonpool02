package com.hand.handjsonpool02



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UserController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond User.list(params), model:[userInstanceCount: User.count()]
    }

    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'create'
            return
        }

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view:'edit'
            return
        }
		
		if(params.oldPassword.encodeAsSHA()!=session.user.password)
		{
			redirect(action:"edit",id:params.id)
			flash.message = "The old password is wrong!"
			return
		}
		
		if(params.password!=params.confirmPassword){
			redirect(action:"edit",id:params.id)
			flash.message = "Your confirm password must be the same as the new password!"
			return
		}

        userInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*'{ respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def login={}
	def logout={
		flash.message="Goodbye${session.user.loginName}"
		session.user=null
		redirect(action:"login")
	}
	def authenticate={
		def user=User.findByLoginNameAndPassword(params.loginName,params.password.encodeAsSHA())
		if(user){
			session.user=user
			flash.message="Hello ${user.loginName}!"
			if(session?.user?.admin){
				redirect(controller:"admin",action:"index")
			}
			else{
				redirect(controller:"user",action:"show",id:user.id)	
			}	
		}
		else{
			flash.message="Sorry,${params.loginName}.Please try again."
			redirect(action:"login")
		}
	}
	def sub={
		redirect(url:"/json/"+params.urll)
	}
}
