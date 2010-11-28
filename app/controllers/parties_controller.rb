class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])
    @people = @party.people
  end
  def index
    @parties = Party.all
  end
end
