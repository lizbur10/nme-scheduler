class CreateManagers < ActiveRecord::Migration[5.2]
  def change
    create_table :managers do |t|
      t.integer :market_id
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.boolean :active
      t.text :phone

      t.timestamps
    end
  end
end
