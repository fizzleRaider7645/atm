class CreateBalances < ActiveRecord::Migration[5.2]
  def change
    create_table :balances do |t|
      t.float :total
      t.timestamps
    end
  end
end
