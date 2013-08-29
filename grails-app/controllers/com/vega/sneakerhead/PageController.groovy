package com.vega.sneakerhead

class PageController {

	def index() {
		redirect action:'contact'
	}

	def contact() {
		// nothing to do
	}

	def blog() {
		def base = 'http://www.danvega.org/blog/'
		def posts = [
			[title: 'Learning Grails - Project Sneakerhead', link:'2013/8/19/Learning-Grails--Project-Sneakerhead'],
			[title: 'Sneakerhead First Steps', link:'2013/8/19/Sneakerhead-First-Steps'],
			[title: 'Sneakerhead Git Branches', link:'2013/8/19/Sneakerhead-Git-Branches']
		]

		[baseURL:base,posts:posts]
	}


}