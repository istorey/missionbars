class PostsController < ApplicationController
  def index
  	@post = Post.all
  end	

  def new
  	@post = Post.new
  end

  def create
  @post = Post.create( post_params )
	end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:post).permit(:image)
	end
end