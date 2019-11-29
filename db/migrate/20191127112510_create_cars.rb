class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.integer :year_of_manufacture
      t.text :description

      t.timestamps
    end
  end
end
