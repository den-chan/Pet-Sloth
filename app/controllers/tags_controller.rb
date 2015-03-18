class TagsController < ApplicationController
  def search
    @tag = Tag.find search_params, select: :title
    render json: @tag.select("title")
  end
  
  private
    def search_params
      params.require(:single_tag).permit(:title, :active)
    end
end