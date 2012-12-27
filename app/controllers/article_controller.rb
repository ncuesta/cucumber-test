class ArticleController < ApplicationController
  def show
    @attributes = params[:slug].split('-').map(&:to_sym)
  end
end
