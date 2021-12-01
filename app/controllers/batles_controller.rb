class BatlesController < ApplicationController
  def index
    @teams = current_trainer.teams
  end

  def show
    @poke = Poke.first
  end
end
