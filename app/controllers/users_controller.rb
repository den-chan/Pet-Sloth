class UsersController < ApplicationController  
  def new
    @user = User.new
    @tag = Tag.new
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
  
  def show
    @user = User.find(session[:current_user_id])
  end
  
  def search
    @users = User.all
    render json: @users.select("username, body"), include: {tags: {only: :title}}
  end
  
  private
    def user_params
      params.require(:user).permit(:username, :body)
    end
end