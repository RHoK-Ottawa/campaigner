require 'test_helper'

class SignatoriesControllerTest < ActionController::TestCase
  
  def setup
    @signatory = signatories(:bob)
    @campaign = campaigns(:epic_petition)
  end

  test "create" do
    post :create, :campaign_id => @campaign.id, :signatory => {:email => "epic@email.com", :name => "EpiC Name"} 
    assert_response 302
    assert_equal @campaign.signatories.where(:email => "epic@email.com", :name => "EpiC Name").length, 1
  end

  test "should get index" do
    get :index, :campaign_id => @campaign.id 
    assert_response :success
  end
  
  test "should get show" do
    get :show, :campaign_id => @campaign.id, :id => @signatory.id 
    assert_response :success
  end

end
