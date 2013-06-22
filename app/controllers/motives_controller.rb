class MotivesController < ApplicationController
  def index
    @motives = Motive.all
  end
end
