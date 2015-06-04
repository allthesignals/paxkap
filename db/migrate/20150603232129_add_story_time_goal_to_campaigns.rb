class AddStoryTimeGoalToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :story, :string
    add_column :campaigns, :goal, :integer
    add_column :campaigns, :target_date, :date
  end
end