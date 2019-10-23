class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.integer :vin
      t.string :model
      t.references :make, foreign_key: true

      t.timestamps
    end
  end
end
