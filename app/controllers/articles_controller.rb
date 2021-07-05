class ArticlesController < ApplicationControllerCRUD

# READ
  def index
    @articles = article.all
  end

  def show

  end

  def edit

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
