class CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
  end

  def new
    @campaigns = Campaign.all
  end

  def show
    @campaign = Campaign.find(params[:id])
  end
end
