class CreateCostumes < ActiveRecord::Migration[5.2]
  def change
    create_table :costumes do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :address
      t.integer :price_per_day

      t.timestamps
    end
  end
end
