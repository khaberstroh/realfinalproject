class CreateSilhouettes < ActiveRecord::Migration
  def change
    create_table :silhouettes do |t|
      t.string :silhouette_type

      t.timestamps
    end
  end
end
