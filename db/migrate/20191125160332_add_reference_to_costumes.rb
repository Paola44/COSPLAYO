class AddReferenceToCostumes < ActiveRecord::Migration[5.2]
  def change
    add_reference :costumes, :user, index: true
  end
end
