class SessionsController < ApplicationController
  include SessionsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user.password == params[:session][:password]
      if @user.save
        sign_in @user
        redirect_to user_blogs_path(@user)
      else
        render 'new'
      end
    end
  end

  def destroy
  end
end
