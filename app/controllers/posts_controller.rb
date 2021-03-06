class PostsController < ApplicationController
    before_action :move_to_index, except: [:index,:show]

    def index
        @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
    end

    def new
    end

    def create
        Post.create(text: post_params[:text], user_id: current_user.id, like_count: 0)
    end

    def destroy
        post = Post.find(params[:id])
        if post.user_id == current_user.id
          post.destroy
        end
    end

    def show
        @post = Post.find(params[:id])
        @comments = @post.comments.includes(:user)
    end

    def edit
        @post = Post.find(params[:id])
    end 
    
    def update
        post=Post.find(params[:id])
        if post.user_id == current_user.id
            post.update(post_params)
        end
    end

    private
    def post_params
        params.permit(:text)
    end

    def move_to_index
        redirect_to action: :index unless user_signed_in?
    end
end