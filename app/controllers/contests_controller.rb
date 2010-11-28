class ContestsController < ApplicationController
  def show
    @contest  = Contest.find(params[:id])
    @people = @contest.people
    @regions = @contest.regions
  end
  def index
    @contests  = Contest.all
  end
end
