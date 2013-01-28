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

  def retrieve
    @debate = Debate.find(params[:id])
    case params[:select]
    when "1"
      if @debate.statement1
        render :text => @debate.statement1
      else
        render :status => 404
      end
    when "2"
      if @debate.statement2
        render :text => @debate.statement2
      else
        render :status => 404
      end
    when "3"
      if @debate.statement3
        render :text => @debate.statement3
      else
        render :status => 404
      end
    when "4"
      if @debate.statement4
        render :text => @debate.statement4
      else
        render :status => 404
      end
    when "5"
      if @debate.statement5
        render :text => @debate.statement5
      else
        render :status => 404
      end
    when "6"
      if @debate.statement6
        render :text => @debate.statement6
      else
        render :status => 404
      end
    else
      render :status => 404
    end
  end

  def end
  end

  def upvote
  end

  def report
  end

  def extend
    @debate = Debate.find(params[:debate][:id])
    @user = User.find(session[:user_id])
    vote = params[:debate][:extend1]
    if @user.debateName == @debate.debateName1
      if vote == "0"
        @debate.update_attributes(:extend1 => false)
      else
        @debate.update_attributes(:extend1 => true)
      end
      render :nothing => :true
    elsif @user.debateName == @debate.debateName2
      if vote == "0"
        @debate.update_attributes(:extend2 => false)
      else
        @debate.update_attributes(:extend2 => true)
      end
      render :nothing => :true
    else
      #Do nothing
    end
  end

  def lengthen
    @debate = Debate.find(params[:id])
    if @debate.extend1 && @debate.extend2
      render :text => "1"
    else
      render :text => "0"
    end
  end

  def invite
  end

end
