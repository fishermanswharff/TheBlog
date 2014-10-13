class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:create,:new]

  def index
  end

  def show
    @search_query = params[:q]
    @categories = Category.all
    @matches = @categories.map { |cat| cat[:article_id] if cat[:label] == params[:q] }.compact
    @matches.length > 0 ? get_all_articles(@matches) : flash[:notice] = "No results that match that search"
  end

  def get_all_articles(array)
    @articles = []
    array.map { |i| @articles << Article.find(i) }
  end

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