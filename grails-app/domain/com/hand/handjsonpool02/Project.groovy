package com.hand.handjsonpool02

class Project {
	Integer  id
	String projectName
	String description
	User user
	Date dateCreated
	Date lastUpdated
    static constraints = {
		id(blank:false)
		projectName(blank:false)
		description(blank:false)
		user(blank:false)
		dateCreated()
		lastUpdated()
    }
	String toString(){
		"${projectName}"
	}
	static belongsTo=[user:User]
	static hasMany=[jsons:Json]
}
