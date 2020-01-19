class RemoveColumnNameFromTableUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :table_users, :column_email, :data_string
  end
end
