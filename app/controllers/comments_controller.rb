class CommentsController < ApplicationController
    
  def index
  end  

  def new
  end

  def create
    @comment = Comment.create(text: comment_params[:text], post_id: comment_params[:post_id], user_id: current_user.id)
    redirect_to "/posts/#{@comment.post.id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end

  def destroy
    @comment = Comment.find(params[:id])
    comment = Comment.find(params[:id])
    if comment.user_id == current_user.id
      comment.destroy
    end
  end

  def show
  end

  def edit
    @comment = Comment.find(params[:id])
    comment = Comment.find(params[:id])
    @post_text = comment.post.text
  end 
  
  def update
    @comment = Comment.find(params[:id])
    comment=Comment.find(params[:id])
    if comment.user_id == current_user.id
      comment.update(comment_params)
    end
  end

  private
  def comment_params
    params.permit(:text, :post_id)
  end
end
