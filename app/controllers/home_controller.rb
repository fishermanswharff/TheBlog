class HomeController < ApplicationController

  def index
    if @user = current_user
      @allarticles = @user.articles.all
    else
      @allarticles = Article.all  
    end
  end
end