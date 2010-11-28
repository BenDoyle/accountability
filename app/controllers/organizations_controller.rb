class OrganizationsController < ApplicationController
  def show
    @organization = Organization.find(params[:id])
    @people = @organization.people
  end
  def index
    @organizations = Organization.all
  end
end
