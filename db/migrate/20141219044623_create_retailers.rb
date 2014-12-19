class CreateRetailers < ActiveRecord::Migration
  def change
    create_table :retailers do |t|
      t.string :retailer_name
      t.string :retailer_address
      t.string :retailer_street_name
      t.string :retailer_city
      t.string :retailer_state
      t.string :retailer_website
      t.string :retailer_phone

      t.timestamps
    end
  end
end
