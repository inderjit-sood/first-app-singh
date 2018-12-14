class RecipesController < ApplicationController
  def index
  	@search_term=params[:search] || 'chocolate'
  	@array_parsed=Recipe.for(@search_term)
  end
end
