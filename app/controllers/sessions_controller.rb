class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
      flash.now[:error] = "Invalid email/password cobination."
      @title = "Sign in"
      render 'new'
    else
      # Handle successful signin here.    
    end
    
  end
  
  def destroy
    
  end

end
