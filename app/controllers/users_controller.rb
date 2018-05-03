class UsersController < ApplicationController
  def home
  end

  def new
  	@user = User.new

  end

  def create
  	@user = User.create(name: params['name'])
  
  #	if @user.save
  #	   log_in @user 
  #	   flash[:success] = "Welcome to the Sample App!"
   #    redirect_to @user

    #else

    #  render 'new'

  end



  def show
  	@user = User.create(name: params['name'])
  end
end
