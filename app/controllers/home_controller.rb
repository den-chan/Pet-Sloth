class UsersController < ApplicationController
  def index
    render inline: "Sup."
  end
end