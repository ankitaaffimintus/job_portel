class CreateVacancies < ActiveRecord::Migration
  def change
    create_table :vacancies do |t|
      t.string :name
      t.integer :no_of_vacancy
      t.string :eligibilty
      t.string :technology
      t.integer :salary
      t.integer :experience
      t.text :key_skilles

      t.timestamps null: false
    end
  end
end
