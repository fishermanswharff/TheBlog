class HomeController < ApplicationController

  helper_method :get_author

  def index
    if @user = current_user
      @allarticles = @user.articles.all
    else
      @allarticles = Article.all  
    end
    get_users
    get_recent_users
    get_user_articles
  end

  def get_users
    @users = User.all
  end

  def get_recent_users
    @recent_users = User.all.map { |user| user.last_sign_in_at >= 1.day.ago ? user : nil }.compact
  end

  def get_user_articles
    @users = User.all
    @user_articles = []
    @users.each { |user| 
      @user_articles << user.articles 
    }
  end

  def get_author(id)
    User.find(id).email
  end
end 