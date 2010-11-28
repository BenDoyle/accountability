class ContestsController < ApplicationController
  def show
    @contest  = Contest.find(params[:id])
    @polls = @contest.polls #.sort_by{|a,b|a.votes <=> b.votes}
  end
  def index
    @contests  = Contest.all
  end
end
