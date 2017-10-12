class DepartmentsController < ApplicationController
  def index
    @articles = Article.all
  end
end
