class Api::WorldLeadersController < ApplicationController
  def show
    @leader = WorldLeader.find(params[:id])
    @sentiments = @leader.sentiments
  end

  def index
    @leaders = WorldLeader.all
  end
end
