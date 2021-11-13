class TeamsController < ApplicationController
  def index
    @pokemons = PokeApi.get(pokemon: {limit: 5})
    @team = Team.new
  end
  
  def show
  end
  
  def new
    @pokemons = PokeApi.get(pokemon: {limit: 5})
    @team = Team.new
  end
  
  def create
    @team = Team.new values
    if @team.save!
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
    params.require(:team).permit!
  end
end