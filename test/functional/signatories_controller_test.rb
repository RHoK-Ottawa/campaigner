require 'test_helper'

class SignatoriesControllerTest < ActionController::TestCase
  
  def setup
    @signatory = signatories(:bob)
    @campaign = campaigns(:epic_petition)
  end

  test "create" do
    name = "EpiC Name"
    email = "epic@email.com"
    post :create, :campaign_id => @campaign.id, :signatory => {:email => email, :name => name} 
    assert_response 302
    assert_equal @campaign.signatories.where(:email => email, :name => name).length, 1
  end

  test "create json" do
    name = "EpiC Name"
    email = "epic@email.com"
    post :create, :format => :json, :campaign_id => @campaign.id, :signatory => {:email => email, :name => name} 
    assert_response :success
    assert_equal @campaign.signatories.where(:email => email, :name => name).length, 1
  end

  test "should get index" do
    get :index, :campaign_id => @campaign.id 
    assert_response :success
  end

  test "should get index json" do
    get :index, :format => :json, :campaign_id => @campaign.id 
    assert_response :success
  end
  
  test "should get show" do
    get :show, :campaign_id => @campaign.id, :id => @signatory.id 
    assert_response :success
  end

  test "should get show json" do
    get :show, :format => :json, :campaign_id => @campaign.id, :id => @signatory.id 
    assert_response :success
  end

end
