class AddDescriptionToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :description, :string
  end
end
