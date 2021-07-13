class ChangePriceOfCarColumnType < ActiveRecord::Migration[6.1]
  def change
    change_column :cars, :price, :float
  end
end
