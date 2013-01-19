class TopicsController < ApplicationController
  def index
    @topic = Topic.new
    @topic2 = Topic.new
    @topics = Topic.all
    @debate = Debate.new
  end

  def create
    @newTopic = Topic.create(:name => params[:topic][:name], :description => params[:topic][:description])
    redirect_to :action => :index
  end


  def edit
    @editTopic = Topic.find(params[:topic][:id])
  end

  def update
    @updateTopic = Topic.find(params[:topic][:id])
    if params[:topic][:name]
      @updateTopic.update_attributes(:name => params[:topic][:name])
    end

    if params[:topic][:description]
      @updateTopic.update_attributes(:description => params[:topic][:description])
    end
    
    redirect_to :action => :index
  end


  def delete
    @deleteTopic = Topic.find(params[:topic][:id])
    @deleteTopic.destroy
    redirect_to :action => :index
  end

end
