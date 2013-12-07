class SignatoriesController < ApplicationController

  respond_to :html
  respond_to :json #:except => [ ... ]

  def new
  end

  def create
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = @campaign.signatories.create(params[:signatory])
    @signatory.save
    redirect_to :action => "success", :id => @signatory.id
  end

  def index
    @signatories = Signatory.find(:all)

    respond_to do |format|
      format.html
      format.json { render json: @signatories }
    end
  end

  def success
    @campaign = Campaign.find(params[:campaign_id])
    @signatory = Signatory.find(params[:id])
  end

  def show
    @signatory = Signatory.find(params[:id])

    respond_to do |format|
      formate.html
      format.json { render json: @signatory }
    end
  end

end
