class SessionsController < ApplicationController
def new
  end

  def create
     user = User.find_by(name: params[:session][:name].downcase)
    if user && user.authenticate(params[:session][:name])
    	log_in user redirect_to user 
      # Log the user in and redirect to the user's show page.
    else
        flash.now[:danger] = 'Wrong username !' # Not quite right!
      render 'new'
    end
  end

  def destroy
  end
end
