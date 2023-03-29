class UsersController < ApplicationController
    def create
      user = User.create(user_params)
      if user.valid? 
        session[:user_id] = user.id
        render json: user
      end

    end
    def index
      render json: User.all
    end
  
    private
  
    def user_params
      params.permit(:name, :email, :password, :password_confirmation)
    end
  
    def sign_in(user)
      session[:user_id] = user.id
    end
  end
  