class UrlMappings {

	static mappings = {

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/contact" {
			controller = 'page'
			action = 'contact'
		}

		"/blog" {
			controller = 'page'
			action = 'blog'
		}

		"/"(view:"/index")
		"500"(view:'/error')
	}
}
