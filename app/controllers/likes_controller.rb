class LikesController < ApplicationController

  def create
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])
    @like.save
    @post = Post.find_by(id: @like.post_id)
    @like_count = Like.where(post_id: params[:post_id]).count
    redirect_to("/posts")
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
    @like.destroy
    @post = Post.find_by(id: @like.post_id)
    @like_count = Like.where(post_id: params[:post_id]).count
    redirect_to("/posts")
  end

  def set_post
    @post = Post.find(params[:post_id])
  end

end
# class LikesController < ApplicationController
#   before_action :set_post, only: [:create, :destroy]

#   def create
#     @like = Like.create(user_id: current_user.id, post_id: params[:post_id])
#   end

#   def destroy
#     like = Like.find_by(user_id: current_user.id, post_id: params[:post_id])
#     like.destroy
#   end

#   private

#   def set_post
#     @post = Post.find(params[:post_id])
#   end
# end
  