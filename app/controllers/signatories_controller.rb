class SignatoriesController < ApplicationController

  respond_to :html
  respond_to :json #:except => [ ... ]

  def new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = @campaign.signatories.create(params[:signatory])
    @signatory.save
    
    respond_to do |format|
      format.html { redirect_to :action => "success", :id => @signatory.id }
      format.json { render :json => @signatory }
    end
  end

  def success
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = Signatory.find(params[:id])
  end

  def index
    @campaign = Campaign.find(params[:campaign_id])
    respond_with(@signatories = @campaign.signatories.find(:all))
  end

  def show
    respond_with(@signatory = Signatory.find(params[:id]))
  end

end
