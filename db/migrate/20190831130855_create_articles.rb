class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :titxt
      t.text :text

      t.timestamps
    end
  end
end
