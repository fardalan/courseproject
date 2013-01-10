module PostsHelper

	def display_url_link(post)
		return post.url unless post.is_link? 

		if post.url.starts_with?("http://")
			return post.url
		else
			return "http://" + post.url
		end
	end
end
