class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :advertiser_name, null: false
      t.string :url, null: false
      t.text :description, null: false, limit: 500
      t.date :starts_at, null: false
      t.date :ends_at
      t.boolean :premium, default: false
      t.integer :state, default: 0

      t.timestamps
    end
  end
end
