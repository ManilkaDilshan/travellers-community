class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @posts = Post.search(params[:search])
  end
end
