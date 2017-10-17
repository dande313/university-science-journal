class DepartmentsController < ApplicationController
  def index
    @articles = Article.all
  end

  def show

  	@params = params[:id]
  	@articles = Article.all.collect {|article| next if article.user.department.id != params[:id].to_i; article}.compact

  end
end
