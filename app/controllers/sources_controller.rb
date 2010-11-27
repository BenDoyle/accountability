class SourcesController < ApplicationController
  def show
    @source = Source.find(params[:id])
    @stories = @source.stories
  end

  def index
    @sources = Source.all    
  end
end
