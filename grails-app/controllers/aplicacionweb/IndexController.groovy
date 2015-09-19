package aplicacionweb

import ar.piwaf.Post

class IndexController {

    def index() {
		def postInstanceList = Post.findAll()
		[postInstanceList: postInstanceList]
    }
}