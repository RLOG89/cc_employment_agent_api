class AddPermissionsToUser < ActiveRecord::Migration
  def change
    add_column :users, :permissions, :integer
  end
end
