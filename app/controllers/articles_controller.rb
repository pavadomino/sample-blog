class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_article, only: [:edit, :show, :update, :destroy]

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end

  def index
    @articles = Article.order 'created_at DESC'
  end

  def show
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    if @article.destroy
      redirect_to articles_path, success: 'The article item was successfully destroyed.'
    else
      render action: 'new', danger: 'Error during deletion!'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def find_article
    @article = Article.find(params[:id])
  end
end
