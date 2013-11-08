class PostsController < ApplicationController
	def create
		@movie = Movie.find params[:movie_id]
		if @movie
			@post = @movie.posts.create params[:post]
			@post.user_id = @current_user_id
			@post.save
		end
	
		response_to do |format|
			format.html{redirect_movie @movie}
		end
	end
end
