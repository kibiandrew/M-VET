class UsersController < ApplicationController
    def create
      user = User.create(user_params)
      if user.valid? 
        session[:user_id] = user.id
        render json: user
      end

    end
  
    def login
      @user = User.find_by(email: params[:email])
  
      if @user&.authenticate(params[:password])
        sign_in(@user)
        redirect_to root_url, notice: "Logged in!"
      else
        flash.now.alert = "Email or password is invalid"
        render :new
      end
    end
  
    private
  
    def user_params
      params.permit(:name, :email, :password, :password_confirmation)
    end
  
    def sign_in(user)
      session[:user_id] = user.id
    end
  end
  