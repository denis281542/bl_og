class CreateScreenScrapings < ActiveRecord::Migration[6.0]
  def change
    create_table :screen_scrapings do |t|

      t.timestamps
    end
  end
end
