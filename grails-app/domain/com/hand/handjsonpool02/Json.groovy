package com.hand.handjsonpool02

class Json {

    static constraints = {
        id()
        placeholderUrl()
        method(inList:["POST","DELETE","PUT","GET"])
        jsonData()
		dateCreated()
		lastUpdated()
    }
    Integer id
    String placeholderUrl
    String method
    String jsonData
    Project project
    Date dateCreated
    Date lastUpdated
    String toString(){
        "${placeholderUrl}"
    }
	static belongsTo=[project:Project]
}
