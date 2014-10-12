class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:create,:new]

  def create 
    @article = Article.find(params[:article_id])
    @category = @article.categories.create(category_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @category = @article.categories.find(params[:id])
    @category.destroy
    redirect_to artcle_path(@article)
  end

  private 
    def category_params
      params.require(:category).permit(:label)

    end
end