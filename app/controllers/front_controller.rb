class FrontController < ApplicationController
  def index
    render inline: "Sup."
  end
end