class SearchController < ApplicationController
  def pokes
    @pokemons = Wild.all.where('lower(name) LIKE ?', "%#{params[:term].downcase}%").page(params[:page])
  end
end
