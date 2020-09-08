class UsersController < ApplicationController
  def new
    
  end

  def create
    @user = User.new(username: params[:username], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
  
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end
end
