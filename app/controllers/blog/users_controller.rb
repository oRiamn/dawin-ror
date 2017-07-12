class Blog::UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@posts = @user.posts.paginate :per_page => 5, :page => params[:page]
	end

end