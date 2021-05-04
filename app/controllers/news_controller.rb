class NewsController < ApplicationController
  def index
    @articles = NewsArticle.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 5)
    redirect_to '/news' if params[:page] == '1'
  end

  def show
    @article = NewsArticle.find(params[:id])
  end

  def create
    @article = NewsArticle.create( news_article_params )
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def news_article_params
    params.require(:article).permit(:title, :text, :category, :file, :image)
  end

end