class CampaignsController < ApplicationController

  def new
  end

  def create
    @campaign = Campaign.create(params[:campaign])
    @campaign.save
    redirect_to @campaign
  end

  def index
    @campaigns = Campaign.find(:all)
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

end
