class SignatoriesController < ApplicationController

  respond_to :html
  respond_to :json #:except => [ ... ]

  def new
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = Signatory.new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = @campaign.signatories.create(params[:signatory])
    
    if @signatory.save
      respond_to do |format|
        format.html { redirect_to :action => "success", :id => @signatory.id }
        format.json { render :json => @signatory }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render :json => @signatory.to_json, :status => :unprocessable_entity }
      end
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

  def destroy
    @signatory = Signatory.find(params[:id])
    @signatory.destroy
    redirect_to campaign_signatories_path
  end

end
