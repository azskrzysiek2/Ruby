class CreateTrofeums < ActiveRecord::Migration[5.1]
  def change
    create_table :trofeums do |t|
      t.string :name
      t.string :value
      t.integer :klub_id

      t.timestamps
    end
  end
end
