class ApplicationController < ActionController::Base
  before_action :authenticate_trainer!

  require 'poke-api-v2'
end
