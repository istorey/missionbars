class WallsController < ApplicationController
  def index
  	@post = Post.all
  end
  def new
  end
end
