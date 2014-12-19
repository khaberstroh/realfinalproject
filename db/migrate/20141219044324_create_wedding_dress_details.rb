class CreateWeddingDressDetails < ActiveRecord::Migration
  def change
    create_table :wedding_dress_details do |t|
      t.string :wedding_dress_detail_location
      t.references :wedding_dress, index: true
      t.references :detail, index: true

      t.timestamps
    end
  end
end
