class Backend::PostsController < ApplicationController
	before_action :authenticate_user!

  	def index
  		@posts = Post.all
  	end
  	def show
		@post = Post.find(params[:id])
	end
	def new
		@post = Post.new
	end
	def create
		@post = Post.new
		@post.update_attributes params[:post].permit(:title, :header, :content, :picture)
		if @post.save
			redirect_to [:backend, @post]
		else
			render "new"
		end
	end
	def edit
		@post = Post.find(params[:id])
		render "edit"
	end
	def update
		@post = Post.find(params[:id])
		@post.update_attributes params[:post].permit(:title, :header, :content, :picture)
		if @post.save
			redirect_to [:backend, @post]
		else
			render "edit"
		end
	end
	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			redirect_to [:backend, :posts]
		else
			render "index"
		end
	end
end
