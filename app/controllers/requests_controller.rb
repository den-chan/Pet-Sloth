class RequestsController < ApplicationController
  def new
  end
  
  def show
    #@user = User.find(session[:current_user_id])
    @tag = Tag.new
  end
  
  def search
    @users = User.all
    render json: @users.select("name, body"), include: {tags: {only: :title}}
  end
end