require 'test_helper'

class CampaignsControllerTest < ActionController::TestCase

  def setup
    @signatory = signatories(:bob)
    @campaign = campaigns(:epic_petition)
  end

  test "create" do
    title = "Fairly Epic Petition"
    petition_text = "This petition is farily epic."
    post :create, :campaign => {:title => title, :petition_text => petition_text} 
    assert_response 302
    assert_equal Campaign.where(:title => title, :petition_text => petition_text).length, 1
  end

  test "create json" do
    title = "Fairly Epic Petition"
    petition_text = "This petition is farily epic."
    post :create, :format => :json, :campaign => {:title => title, :petition_text => petition_text} 
    assert_response :success
    assert_equal Campaign.where(:title => title, :petition_text => petition_text).length, 1
  end

  test "should get index" do
    get :index, :id => @campaign.id 
    assert_response :success
  end

  test "should get index json" do
    get :index, :format => :json, :id => @campaign.id 
    assert_response :success
  end

  test "should get show" do
    get :show, :id => @campaign.id, :signatories_id => @signatory.id 
    assert_response :success
  end

  test "should get show json" do
    get :show, :format => :json, :id => @campaign.id, :signatories_id => @signatory.id 
    assert_response :success
  end

end
