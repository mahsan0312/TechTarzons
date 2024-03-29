class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def all_articles
    @all_articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  private

  def authorize_admin!
    authorize! :manage, Article
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
