class AllArticlesController < ApplicationController
  def index
    @articles = Article.all # Or fetch articles based on your requirements
  end
end
