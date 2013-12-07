class CampaignsController < ApplicationController

  respond_to :html
  respond_to :json #:except => [ ... ]

  def new
  end

  def create
    @campaign = Campaign.create(params[:campaign])
    @campaign.save

    respond_to do |format|
      format.html { redirect_to @campaign }
      format.json { render :json => @campaign }
    end
  end

  def index
    respond_with(@campaigns = Campaign.find(params[:all]))
  end

  def show 
    respond_with(@campaign = Campaign.find(params[:id]))
  end

end
