class RemoveUserIdFieldFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :campaign_id
  end
end
