class SignatoriesController < ApplicationController

  def new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = @campaign.signatories.create(params[:signatory])
    @signatory.save
    redirect_to :action => "show", :id => @signatory.id
  end

  def index
    @signatories = Signatory.find(:all)
  end

  def show
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = Signatory.find(params[:id])
  end

end
