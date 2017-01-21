class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :company_name
      t.string :company_website
      t.string :contact_details
      t.string :company_logo_url
      t.string :business_type
      t.string :address
      t.integer :no_previous_students_hired
      t.text :notes

      t.timestamps null: false
    end
  end
end
