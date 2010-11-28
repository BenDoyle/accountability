class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])
    @memberships = @party.party_memberships
  end
  def index
    @parties = Party.all
  end
end
