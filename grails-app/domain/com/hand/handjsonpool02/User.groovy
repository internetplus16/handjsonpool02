package com.hand.handjsonpool02

class User {
    Integer id
    String loginName
    String password
    String phone
    Date dateCreated
    Date lastUpdated
	String role="user"
	
    static constraints = {
        id(blank:false)
        loginName(blank: false,maxSize: 20)
        password(password:true)
        phone(minSize:7,maxSize:15)
        dateCreated()
        lastUpdated()
    }
	
	boolean isAdmin(){
		return role=="admin"
	}
	
    String toString(){
        "${loginName}"
    }
	
	def beforeInsert={
		password=password.encodeAsSHA()
	}
	
	def beforeUpdate={
		password=password.encodeAsSHA()
	}
	
	static hasMany=[projects:Project]
}
