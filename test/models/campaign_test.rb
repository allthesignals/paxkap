require 'test_helper'

class CampaignTest < ActiveSupport::TestCase
  def setup
    @campaign = Campaign.new(title: "Example User", 
                      story: "Gardner", 
                      target_date: Date.new(2015,7,7),
                      goal: 12345)
  end
  
  test "should be valid" do
    assert @campaign.valid?
  end

  test "title should be present" do
    @campaign.title = "     "
    assert_not @campaign.valid?
  end

  test "story should be present" do
    @campaign.story = "     "
    assert_not @campaign.valid?
  end

  test "target_date should be present" do
    @campaign.target_date = "     "
    assert_not @campaign.valid?
  end

  test "goal should be present" do
    @campaign.goal = "     "
    assert_not @campaign.valid?
  end
end
