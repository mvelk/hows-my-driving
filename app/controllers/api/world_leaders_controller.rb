class Api::WorldLeadersController < ApplicationController
  def show
    @leaders = WorldLeader.all
  end

  def index
    @leaders = WorldLeader.all
  end
end
