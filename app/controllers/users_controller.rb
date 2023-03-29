class UsersController < ApplicationController
    def create
      user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to root_url, notice: "Thank you for signing up!"
      else
        render "new"
      end
    end
  
    def login
      user = User.find_by(email: params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, notice: "Logged in!"
      else
        flash.now.alert = "Email or password is invalid"
        render "new"
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end
  