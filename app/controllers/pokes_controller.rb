class PokesController < ApplicationController
  before_action :set_pokemon, only: %i[edit update destroy]
  before_action :set_wild, only: %i[show]

  def index
    @pokemons = Wild.all.page(params[:page])
  end

  def show
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
    @teams = current_trainer.teams
    @poke = PokeApi.get(pokemon: @pokemon.name)
  end

  def update
    if @pokemon.update values
      redirect_to teams_path
    else
      render :edit
    end
  end

  def destroy
    if @pokemon.destroy!
      redirect_to teams_path
    else
      render :edit
    end
  end

  private

  def values
    params.require(:poke).permit!
  end

  def set_pokemon
    @pokemon = Poke.find(params[:id])
  end

  def set_wild
    @pokemon = Wild.find(params[:id])
  end
end
