class ArticlesController < ApplicationController

# READ
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])

  end

  def new

  end

  def update

  end

  def destry

  end

private

  def articles_params
    params.require(:articles).(:title, :content)
  end
  
end
