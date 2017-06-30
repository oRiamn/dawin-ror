class Blog::PostsController < ApplicationController
	before_action :authenticate_user!, :except => [:index, :show]

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
		@post.update_attributes params[:post].permit(:title, :header, :publishDate, :author, :content, :picture)
		if @post.save
			redirect_to [:blog, @post]
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
		@post.update_attributes params[:post].permit(:title, :header, :publishDate, :author, :content, :picture)
		if @post.save
			redirect_to [:blog, @post]
		else
			render "edit"
		end
	end
	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			redirect_to [:blog, :posts]
		else
			render "index"
		end
	end
end
