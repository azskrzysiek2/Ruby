class CreateKlubs < ActiveRecord::Migration[5.1]
  def change
    create_table :klubs do |t|
      t.string :name
      t.string :city
      t.integer :position

      t.timestamps
    end
  end
end
