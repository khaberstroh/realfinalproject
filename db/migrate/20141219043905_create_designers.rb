class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :designer_last_name
      t.string :designer_first_name
      t.string :designer_website

      t.timestamps
    end
  end
end
