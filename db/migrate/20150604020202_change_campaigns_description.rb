class ChangeCampaignsDescription < ActiveRecord::Migration
  def change
    change_column :campaigns, :description, :text, :limit => 429496
  end
end
