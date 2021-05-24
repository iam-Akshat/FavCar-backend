class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.integer :year
      t.string :description
      t.string :image_url
      t.string :manufacturer
      t.decimal :price

      t.timestamps
    end
  end
end
