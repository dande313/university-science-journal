class TopicsController < ApplicationController

  def new
    @topic = Topic.new
    @article= Article.find_by(id: params[:id])
    if !can_edit?
    	redirect_to ("/articles/#{@article.id}/")
    end
  end

  def create
   	@topic = Topic.new(topic_params)
   	@article= Article.find_by_id(article_param[:article_id])
	if @topic.save
		@article.topics<< @topic
		redirect_to ("/articles/#{@article.id}/edit")
	else
		format.html { render :new }
	end
  end

  def topic_params
    params.require(:topic).permit(:name, :department_id)
   end

   def article_param
   	params.require(:topic).permit(:article_id)
   end

    def can_edit?
      !!((current_user.professor? && current_user.department == @article.user.department) || @article.user == current_user)
    end

end
