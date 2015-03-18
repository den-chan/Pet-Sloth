class RequestsController < ApplicationController
  def new
  end
  
  def show
    #@user = User.find(session[:current_user_id])
    @tag = Tag.new
  end
end