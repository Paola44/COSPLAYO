class AddCoordinatesToCostumes < ActiveRecord::Migration[5.2]
  def change
    add_column :costumes, :latitude, :float
    add_column :costumes, :longitude, :float
  end
end
