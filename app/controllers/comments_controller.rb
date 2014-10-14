class CommentsController < ApplicationController
  
  before_action :authenticate_user!, only: [:create,:destroy]

  def create 
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    @commenter = User.find(@comment.user_id)
    @commenter = @commenter.email
    redirect_to article_path(@article)
  end

  def show
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private 
  def comment_params
    params.require(:comment).permit(:body)
  end

end
