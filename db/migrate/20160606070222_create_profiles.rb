class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :address
      t.string :contact
      t.string :mark_10th
      t.integer :mark_12th
      t.string :graduation
      t.integer :gra_mark
      t.string :post_graduation
      t.integer :post_gra_mark

      t.timestamps null: false
    end
  end
end
