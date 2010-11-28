class RegionsController < ApplicationController
  def show
    @region  = Region.find(params[:id])
    @people = @region.people
    @contests = @region.contests
  end
  def index
    @regions  = Regions.all
  end
end
