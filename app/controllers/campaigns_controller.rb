class CampaignsController < ApplicationController

  respond_to :html
  respond_to :json #:except => [ ... ]

  def new
    @campaign = Campaign.new
  end

  def create
    @campaign = Campaign.create(params[:campaign])
    
    if @campaign.save
      respond_to do |format|
        format.html { redirect_to @campaign }
        format.json { render :json => @campaign }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render :json => @campaign.to_json, :status => :unprocessable_entity }
      end
    end
  end

  def index
    respond_with(@campaigns = Campaign.find(:all))
  end

  def show 
    respond_with(@campaign = Campaign.find(params[:id]))
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    redirect_to campaigns_path
  end

end
