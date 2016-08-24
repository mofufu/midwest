class CreateCompanyforms < ActiveRecord::Migration
  def change
    create_table :companyforms do |t|
      t.string :name
      t.string :attachment
      t.references :companydoc, index: true

      t.timestamps
    end
  end
end
