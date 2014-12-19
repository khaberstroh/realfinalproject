class CreateWeddingDresses < ActiveRecord::Migration
  def change
    create_table :wedding_dresses do |t|
      t.string :wedding_dress_name
      t.date :wedding_dress_year
      t.string :wedding_dress_description
      t.references :silhouette, index: true
      t.references :fabric, index: true
      t.references :designer, index: true

      t.timestamps
    end
  end
end
