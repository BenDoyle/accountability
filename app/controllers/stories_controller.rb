class StoriesController < ApplicationController
  def show
    @story = Story.find(params[:id])
  end

  def index
    @stories = Story.all    
  end
end
