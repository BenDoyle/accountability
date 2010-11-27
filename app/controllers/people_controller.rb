class PeopleController < ApplicationController
  def show
    @person  = Person.find(params[:id])
    @stories = @person.stories
  end
  def index
    @people = Person.all
  end
end
