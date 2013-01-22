class DebatesController < ApplicationController

  def home
    @debate = Debate.find(params[:id])
  end

  def index
    @debate = Debate.new
    @debates = Debate.where("started = ? AND finished = ?", false, false)
  end  

  def create
    @user1 = User.find(session[:user_id])
    @debate = Debate.create(:side1 => params[:debate][:side1], :question => params[:debate][:question], :debateName1 => @user1.debateName, :started => false, :finished => false)
    @topic = Topic.find(params[:debate][:topic_id])
    @topic.debates << @debate
    @user1.debates << @debate
  end

  def join
    @debate = Debate.find(params[:debate][:id])
    @user2 = User.find(session[:user_id])
    @debate.update_attributes(:side2 => params[:debate][:side2], :debateName2 => @user2.debateName, :started => true, :duration => 0, :upvote1 => false, :upvote2 => false)
  end

  def start
    did = params[:id]
    @startDebate = Debate.find(did)
    if @startDebate.started
      render :text => "true"
    else
      render :text => "false"
    end
  end

  def end
  end

  def upvote
  end

  def report
  end

  def extend
  end

  def invite
  end

end
