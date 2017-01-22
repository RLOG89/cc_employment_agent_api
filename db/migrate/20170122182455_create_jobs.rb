class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :company_name
      t.string :job_title
      t.integer :salary_range_min
      t.integer :salary_range_max
      t.datetime :application_closing_date
      t.string :application_process
      t.references :employer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
