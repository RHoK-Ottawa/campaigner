require 'test_helper'

class SignatoriesControllerTest < ActionController::TestCase
  
  def setup
    @signatory = signatories(:bob)
    @campaign = campaigns(:epic_petition)
  end

  #test "create" do
  #  post :create, :campaign_id => @campaign.id ... the rest of the stuff
  #  assert_response :success
  #end

  test "should get show" do
    get :show, :campaign_id => @campaign.id, :id => @signatory.id 
    assert_response :success
  end

  test "should get index" do
    get :index, :campaign_id => @campaign.id 
    assert_response :success
  end

end
