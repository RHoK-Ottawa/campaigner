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
    per_page = 20
    respond_with(@campaigns = Campaign.paginate(:page => params[:page], :per_page => per_page))
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
