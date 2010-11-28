class RegionsController < ApplicationController
  def show
    @region  = Region.find(params[:id])
    @contests = @region.contests
  end
  def index
    @regions  = Region.all
  end
end
