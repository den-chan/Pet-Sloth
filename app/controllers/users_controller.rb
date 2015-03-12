class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
 
    @user.save
    redirect_to @user
  rescue
    redirect_to :back
  end
 
  def show
    @user = User.find(params[:id]) #TODO: get from session
  end
  
  private
    def user_params
      params.require(:username).permit(:body)
    end
end