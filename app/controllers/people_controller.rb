class PeopleController < ApplicationController
  def show
    @person  = Person.find(params[:id])
    @stories = @person.stories
    @organizations = @person.organizations
    @regions = @person.regions
    @contests = @person.contests
  end
  def index
    @people = Person.all
  end
end
