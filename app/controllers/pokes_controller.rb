class PokesController < ApplicationController
  def index
    @pokemons = PokeApi.get(pokemon: {limit: 5})
  end
  
  def show
  end
  
  def new
    @poke = Poke.new
    @pokemons = PokeApi.get(pokemon: {limit: 5})
  end
  
  def create
    @poke = Poke.new values
    if @poke.save!
      redirect_to teams_path
    else
      render :new
    end
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

  private

  def values 
    params.require(:poke).permit(:name, :team_id)
  end
end