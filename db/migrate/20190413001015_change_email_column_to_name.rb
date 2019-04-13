class ChangeEmailColumnToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :email, :name
  end
end
