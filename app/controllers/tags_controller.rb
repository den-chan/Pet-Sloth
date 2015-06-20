class TagsController < ApplicationController
  def search
    @tag = Tag.find_by(search_params.keep_if {|k| k == "title"}) #wat
    render json: @tag || {}
  end
  
  private
    def search_params
      params.require(:single_tag).permit(:title, :active)
    end
end