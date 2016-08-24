class CreateCompanydocs < ActiveRecord::Migration
  def change
    create_table :companydocs do |t|

      t.timestamps
    end
  end
end
