class UsersController < ApplicationController
  def index
    @user = User.find(session[:current_user_id])
  end
  
  def new
    @user = User.new
    flash.discard
  end
  
  def create
    @user = User.new user_params
    if @user.save
      session[:current_user_id] = @user.id
      redirect_to "/requests/show"
    else
      redirect_to :back, alert: @user.errors.messages
    end
  end
  
  private
    def user_params
      params.require(:user).permit(:username, :body)
    end
end