package handjsonpool02

class LoginTagLib {
    def loginControl={
		if(session.user)
		{
			//out<<"Hello ${session.user.loginName}"
			out<<"""${link(action:"logout",controller:"User"){"Logout"}}"""
		}
		else{
			out<<"""${link(action:"login",controller:"User"){"Login"}}"""
		}
	}
}
