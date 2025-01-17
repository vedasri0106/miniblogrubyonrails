# app/controllers/users_controller.rb
class UsersController < ApplicationController
    def new
      # Render signup form
    end
  
    def create
      user = User.create(params[:username], params[:email], params[:password])
  
      session[:user_id] = user.id
      redirect_to posts_path
    end
    
  end  