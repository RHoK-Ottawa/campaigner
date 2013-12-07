class CampaignsController < ApplicationController

  respond_to :html
  respond_to :json #:except => [ ... ]

  def new
  end

  def creates
    @campaign = Campaign.create(params[:campaign])
    @campaign.save
    redirect_to @campaign
  end

  def index
    @campaigns = Campaign.find(:all)

    respond_to do |format|
      format.html
      format.json { render json: @campaigns }
    end
  end

  def show
    @campaign = Campaign.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @campaign }
    end
  end

end
