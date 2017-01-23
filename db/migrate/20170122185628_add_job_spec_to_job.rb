class AddJobSpecToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :job_spec, :text
  end
end
