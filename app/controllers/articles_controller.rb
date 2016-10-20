class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.json
  def index
    @owner = Owner.find_by(slug: params[:owner_name])
    @articles = Article.where(owner: @owner)
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
    @article = Article.find(params[:id])
  end
end
