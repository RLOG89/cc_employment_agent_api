class AddSlackDataToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :slack_data, :text
  end
end
