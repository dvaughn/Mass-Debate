class ApplicationController < ActionController::Base
  protect_from_forgery
  def create
    @newTopic = Topic.create(:name => params[:topic][:name], :description => params[:topic][:description])
    redirect_to :action => :index
  end
end
