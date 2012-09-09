class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_url[0,root_url.length-1], :notice => "Signed up!"
    else
      render "new"
    end
  end
end
