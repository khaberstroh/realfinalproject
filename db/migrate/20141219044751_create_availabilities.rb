class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :availability_price
      t.string :availability_size_range
      t.string :availability_website
      t.references :wedding_dress, index: true
      t.references :retailer, index: true

      t.timestamps
    end
  end
end
