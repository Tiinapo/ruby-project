class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

  def show
  	@article = Article.find(params[:id])

  	@comment = Comment.new
    @comment.article_id = @article.id

  end

end
