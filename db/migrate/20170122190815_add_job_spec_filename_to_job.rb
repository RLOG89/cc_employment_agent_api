class AddJobSpecFilenameToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :job_spec_filename, :string
  end
end
