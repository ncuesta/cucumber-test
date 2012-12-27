class SectionController < ApplicationController
  def cover
    @section = params[:section]
  end
end
