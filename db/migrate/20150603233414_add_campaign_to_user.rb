class AddCampaignToUser < ActiveRecord::Migration
  def change
    add_reference :users, :campaign, index: true, foreign_key: true
  end
end
