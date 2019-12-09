class CreateParsers < ActiveRecord::Migration[6.0]
  def change
    create_table :parsers do |t|
      t.string :vakancy
      t.integer :salary

      t.timestamps
    end
  end
end
