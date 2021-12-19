class BatlesController < ApplicationController
  before_action :set_poke, only: %i[attack defense items skip show]

  def index
    @teams = current_trainer.teams
  end

  def show; end

  def attack; end

  def defense; end

  def items; end

  def skip; end

  private

  def set_poke
    @poke = Poke.first
  end
end
