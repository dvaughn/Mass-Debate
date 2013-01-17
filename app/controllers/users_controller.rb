class UsersController < ApplicationController

  def index
    @user = User.new
  end

  # Requires: Appropriate parameters for User object
  # Modifies: The User table by, potentially, adding a new user
  # Effects: creates a new User object and redirects to the user home page
  #          or returns appropriate validation errors
  def register
    #Variable setting
    email = params[:user][:email]
    pw = params[:user][:password]
    pw_confirm = params[:user][:password_confirmation]
    debateName = params[:user][:debateName]
    firstName = params[:user][:firstName]
    lastName = params[:user][:lastName]
    age = params[:user][:age]
    gender = params[:user][:gender]

    #user instance we are trying to register
    @user = User.new(:debateName => debateName, :email => email, :password => pw, :password_confirmation => pw_confirm, :debateName => debateName, :firstName => firstName, :lastName => lastName,
                     :age => age, :gender => gender, :admin => false, :avgDuration => 0, :numDebates => 0, :upvotes => 0)

    #Does the new user pass validations?
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to :controller => :users, :action => :home
    else
      flash[:register_error] = @user.errors
      @user = User.new
      render :index
    end
  end



  # Requires: The User object has to already exist
  # Modifies: On successful authentication, the user_id is added to the session
  #           if authentication is not successful it modifies nothing
  # Effects: On successful authentication, the user_id is added to the session
  #          then redirects to the user home page or simply returns the 
  #          validation errors
  def login
    #Variable setting
    email = params[:user][:email]
    pw = params[:user][:password]

    #user instance we are trying to validate
    @user = User.find_by_email(email)

    #Does the current user exist?
    if @user
      @current_user = @user.authenticate(pw)

      #Is the current user authenticated?
      if @current_user
        session[:user_id] = @user.id
        redirect_to :controller => :users, :action => :home
      else
        flash[:login_error] = "The password you specified was incorrect"
        render :index
      end

    else
      flash[:login_error] = "The username you specified does not exist"
      @user = User.new
      render :index
    end
  end


  # Requires: A user to be currently logged in
  # Modifies: The session data
  # Effects: Clears the session data and redirects to the index page
  def logout
    session[:user_id] = nil
    @user = User.new
    render :index
  end


  # Requires: a logged in user
  # Modifies: sets site_id and page_id to nil
  # Effects: displays the user's sites through @sites
  def home
    uid = session[:user_id]
    @user = User.find(uid)
  end
end
