class BatlesController < ApplicationController
  before_action :set_team, only: %i[show]

  def index
    @teams = current_trainer.teams
  end

  def show
    @wild_team = [Wild.first, Wild.second, Wild.third]
  end

  def attack; end

  def defense; end

  def items; end

  def skip; end

  private

  def set_team
    @team = Team.find(params[:id])
  end
end
