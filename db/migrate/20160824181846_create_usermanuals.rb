class CreateUsermanuals < ActiveRecord::Migration
  def change
    create_table :usermanuals do |t|
      t.text :document_name
      t.string :document_type
      t.references :user, index: true

      t.timestamps
    end
  end
end
