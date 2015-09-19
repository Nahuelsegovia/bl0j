package ar.piwaf

class Post {
	String titulo
	String autor
	String contenido
	Date dateCreated
    static constraints = {
		titulo()
		autor()
		contenido(nullable: true, maxSize:500)
    }
}
