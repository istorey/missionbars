class PostsController < ApplicationController
  def index
  	@post = Post.all
  end	

  def new
  	@post = Post.new
  end

  def show
    @post = Post.find_by( post_param ) 
  end

  def create
  @post = Post.create( post_params )
  	if @post.save
  		redirect_to root_path
  	else
  		flash[:notice]="You must upload a picture to make a post!"
  		redirect_to(:back)
		end
	end

  def delete
    @post = Post.destroy(post_param)
  end
private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
  def post_param
    params.require(:posts).permit(:image)
  end

	def post_params
	  params.require(:post).permit(:image)
	end
end