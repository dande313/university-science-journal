class ArticlesController < ApplicationController

  before_action :update_records
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article= Article.new
    @topics = Topic.all.collect {|topic| next if topic.department_id != current_user.department.id; topic}.compact

  end

  def edit
    if !can_edit?
      redirect_to "/"
    end
    @topics = Topic.all.collect {|topic| next if topic.department_id != @article.user.department.id; topic}.compact
  end

  def create
    @article = Article.new(article_params)
    @topics = Topic.all.collect {|topic| next if topic.department_id != current_user.department.id; topic}.compact
    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|

      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
    end
  end



  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:name, :description, :link, :user_id, topic_ids:[], topics_attributes: [:name, :department_id])
    end

    def update_records
    	Article.all.each do |article|
    		if !article.user
    		article.delete
    		end
    	end
    end

    def can_edit?
      !!((current_user.professor? && current_user.department == @article.user.department) || @article.user == current_user)
    end
end
