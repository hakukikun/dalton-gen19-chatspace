class UsersController < ApplicationController

    def show
      user = User.find(params[:id])
      @nickname = user.nickname
      @posts = user.posts.page(params[:page]).per(5).order("created_at DESC")
    end
  
    def likes
      @user=User.find_by(id: params[:id])
      @likes=Like.where(user_id: :@user.id)
    end
  
    def unlikes
      @user=User.find_by(id: params[:id])
    #   @unlikes=Unlike.where(user_id: :@user.id)
    end
  
    def score
      user = User.find(params[:id])
      a = post.sum(:like_sum)
    #   b = post.group(posts.user_id).sum(:unlike_sum)
      User.create(score: a)
    end
  
    private
      def user_params
          params.permit(:score)
      end
  
  end
  