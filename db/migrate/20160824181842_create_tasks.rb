class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.boolean :done
      t.text :supporting_file

      t.timestamps
    end
  end
end
