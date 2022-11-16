class PostsController < ApplicationController

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    if @post.reviews.blank?
      @review_average = 0
    else
      @review_average = @post.reviews.average(:rating).round(2)
    end
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy
    redirect_to user_path(current_user)
  end


  private

  def post_params
    params.require(:post).permit(:caption, :location, :visited_date, :image, :user_id)
  end

end
