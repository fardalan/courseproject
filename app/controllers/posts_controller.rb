class PostsController < ApplicationController

	before_filter :ensure_user, only: [:new, :create]

	def index
	@posts = Post.all
	end

	def show
		@post = Post.where(slug: params[:id]).first
		@comment = Comment.new
	end

	def new
		@post = Post.new
	end

	def create
		Post.create(params[:post])
		redirect_to root_path
	end

	def create
		@post = Post.new(params[:post])
    	if @post.save
    	  redirect_to root_path
    	else
    	  render 'new'
    	end 
	end
	
	def ensure_user
		if !params[:user]
			redirect_to posts_path, notice: "Sorry buddy must be a user to access this page!"
		end
	end
end