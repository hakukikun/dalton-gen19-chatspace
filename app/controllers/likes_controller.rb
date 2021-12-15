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
  
  end
  