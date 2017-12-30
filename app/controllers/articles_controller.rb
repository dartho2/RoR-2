class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_show(@article)
    else
  sads
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :description)
  end
end