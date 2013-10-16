package diary

class Entry {

    int id
    String title
    String text
    Date createDate
    Date updateDate
    
    static belongsTo = [author: Author]
}
