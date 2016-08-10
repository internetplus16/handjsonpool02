package handjsonpool02

class LogoutTagLib {
    def logoutControl={
		if(session.user)
		{
			out<<"""${link(action:"show",controller:"User",id:session.user.id){"${session.user.loginName}"}}"""
		}
	}
}
