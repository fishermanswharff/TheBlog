class ArticlesController < ApplicationController
  
  # before any new/create or edit/update, authenticate user 
  before_action :authenticate_user!, only: [:create,:new, :edit, :update]
  # before any action, set the article for show, edit, update and destroy
  before_action :set_article, only: [:show,:edit,:update,:destroy]

  def index 
    if User.all.length == 0
      redirect_to new_user_registration_path
    else
      # find the user of the article instance
      @user = User.find_by(params[:user_id])
      
      # assign all the users articles into an array
      @user_articles = @user.articles.all
      
      @article_author = @user.username ? @user.username : @user.email
      # return all the articles sorted by most recently updated
      @articles = Article.all.sort_by { |article| article.updated_at }.reverse
    end
  end

  def new
    # new article instance
    @article = Article.new
  end

  def create
    # new article instance with accepted parameters
    @article = Article.new(article_params)
    # assign the article's user_id to the current_user's id for associations
    @article.user_id = current_user.id
    # if the articles saves successfully
    if @article.save
      # redirect to the article's page?? maybe redirect to all articles
      redirect_to @article
    else
      # re-render the form so user can fix their snafus
      render 'new'
    end

  end

  def show
    @user = User.find(@article.user_id)
  end

  def edit 
  end

  def update
    if @article.user_id == current_user.id
      if @article.update(article_params)
        redirect_to @article
      else
      render 'edit'
      end
    else 
      redirect_to @article
      flash[:alert] = "You can only edit your own articles"
    end
  end

  def destroy 
    @article.destroy

    redirect_to articles_path
  end

  private 
    def set_article
      @article = Article.find(params[:id])
    end
    def article_params
      params.require(:article).permit(:title, :body, :featured_image, categories: [])
    end
end
