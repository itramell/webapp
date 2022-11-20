class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Aritcle.find(params[:id])
  end
end
