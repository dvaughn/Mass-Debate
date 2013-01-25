class DebatesController < ApplicationController

  def home
    @updatedebate = Debate.new
    @debate = Debate.find(params[:id])
    @currentuser = User.find(session[:user_id])

    if @currentuser.debateName == @debate.debateName1
      render :home1

    elsif @currentuser.debateName == @debate.debateName2
      render :home2

    else
      render :status => :forbidden

    end
  end

  def home1
  end

  def home2
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

  def update
    @debate = Debate.find(params[:debate][:id])
    case params[:debate][:select]
    when "1"
      @debate.update_attributes(:statement1 => params[:debate][:statement1])
      render :text => "Statement 1 updated"
    when "2"
      @debate.update_attributes(:statement2 => params[:debate][:statement1])
      render :text => "Statement 2 updated"
    when "3"
      @debate.update_attributes(:statement3 => params[:debate][:statement1])
      render :text => "Statement 3 updated"
    when "4"
      @debate.update_attributes(:statement4 => params[:debate][:statement1])
      render :text => "Statement 4 updated"
    when "5"
      @debate.update_attributes(:statement5 => params[:debate][:statement1])
      render :text => "Statement 5 updated"
    when "6"
      @debate.update_attributes(:statement6 => params[:debate][:statement1])
      render :text => "Statement 6 updated"
    else
      render :text => "Something bad happened"
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
