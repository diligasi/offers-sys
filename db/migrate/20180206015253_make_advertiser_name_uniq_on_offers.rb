class MakeAdvertiserNameUniqOnOffers < ActiveRecord::Migration[5.1]
  def change
    change_column :offers, :advertiser_name, :string, unique: true
  end
end
