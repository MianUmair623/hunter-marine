class BoatPositionsController < ApplicationController
  def index
    @boatpositions = Boatpositions.active.where("boatname != 'UNASSISTED'")
    @lastboat = Boatpositions.active.maximum("updated_at")
    @fuel_info = FuelInfo.first
  end
end
