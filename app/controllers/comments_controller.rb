class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.new(comment_params)
    if @comment.valid?
      @comment.save
      redirect_to article_path(@article)
      #render 'articles/show', danger: 'Incorrect length'
    else
      flash[:comment_errors] = @comment.errors.full_messages
      redirect_to article_path(@article)
      #render template: "articles/show", alert: "Incorrect length"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end
end
