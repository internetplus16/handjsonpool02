package handjsonpool02

class LoginTagLib {
    def loginControl={
		if(request.getSession(false)&&session.user)
		{
			out<<"""[${link(action:"logout",controller:"User"){"Logout"}}]"""
		}
		else{
			out<<"""[${link(action:"login",controller:"User"){"Login"}}]"""
		}
	}
}
