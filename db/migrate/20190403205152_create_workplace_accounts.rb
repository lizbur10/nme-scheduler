class CreateWorkplaceAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :workplace_accounts do |t|
      t.integer :manager_id
      t.boolean :active
      t.string :company_name
      t.string :company_address
      t.string :company_city
      t.string :company_zip_code
      t.string :ctct_email_list
      t.string :scheduling_contact_name
      t.string :scheduling_contact_phone
      t.string :scheduling_contact_email
      t.string :hr_contact_name
      t.string :hr_contact_phone
      t.string :hr_contact_email
      t.string :delivery_day
      t.datetime :delivery_start_time
      t.datetime :delivery_end_time
      t.text :special_instructions

      t.timestamps
    end
  end
end
