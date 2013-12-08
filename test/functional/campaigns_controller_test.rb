require 'test_helper'

class CampaignsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @signatory = signatories(:bob)
    @campaign = campaigns(:epic_petition)
  end

  #test "create" do
  #  post :create, :campaign_id => @campaign.id ... the rest of the stuff
  #  assert_response :success
  #end

  test "should get index" do
    get :index, :id => @campaign.id 
    assert_response :success
  end

  test "should get show" do
    get :show, :id => @campaign.id, :signatories_id => @signatory.id 
    assert_response :success
  end

end
