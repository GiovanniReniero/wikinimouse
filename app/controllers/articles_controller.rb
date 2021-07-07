class ArticlesController < ApplicationController

  # before_action :find_article, only: [:show, :edit, :update, :delete]


# READ
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article= Article.new
  end

  def create
    # byebug
    @article= Article.new(article_params)
    @article.save
    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    # byebug
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destry

  end

private

  def article_params
    params.require(:article).permit(:title, :content)
  end

  def find_article
    @task = Article.find(params[:id])
  end
  
end
