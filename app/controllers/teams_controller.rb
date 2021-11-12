class TeamsController < ApplicationController
  def index
    @pokemons = PokeApi.get(pokemon: {limit: 5})
  end
  
  def show
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
end