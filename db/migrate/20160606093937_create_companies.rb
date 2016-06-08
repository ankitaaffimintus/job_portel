class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.text :address
      t.string :contact
      t.string :city
      t.string :state
      t.string :pincode

      t.timestamps null: false
    end
  end
end
