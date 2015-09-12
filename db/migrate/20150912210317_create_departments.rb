class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.references :hospital, index: true, foreign_key: true
      t.integer :capacity

      t.timestamps null: false
    end
  end
end
