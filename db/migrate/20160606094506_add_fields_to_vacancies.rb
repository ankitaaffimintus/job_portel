class AddFieldsToVacancies < ActiveRecord::Migration
  def change
    add_column :vacancies, :company_id, :integer
  end
end
