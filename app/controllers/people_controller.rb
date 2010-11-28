class PeopleController < ApplicationController
  def show
    @person  = Person.find(params[:id])
    @stories = @person.stories
    @parties = @person.parties
    @contests = @person.contests
  end
  def index
    @people = Person.all
  end
end
