class PokesController < ApplicationController
  def index
    @pokemons = PokeApi.get(pokemon: { limit: 55 }).results
  end

  def show
    @pokemon = PokeApi.get(pokemon: (params[:id]))
    @teams = current_trainer.teams
    @poke = Poke.new
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

  def set_pokemon
    @pokemon = Poke.find(params[:id])
  end
end
