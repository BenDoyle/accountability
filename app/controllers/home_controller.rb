class HomeController < ApplicationController
  def index
    @people = Person.all
  end
end
