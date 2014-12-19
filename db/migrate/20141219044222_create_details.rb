class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.string :detail_type

      t.timestamps
    end
  end
end
