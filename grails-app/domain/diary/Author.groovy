package diary

class Author {
    int id
    String firstName
    String middleName
    String lastName
    String username
    String password
    
//    static hasMany = [entries: Entry]

    static constraints = {
		middleName nullable: true
    }
}
