class AddAddressToSighting < ActiveRecord::Migration[5.0]
  def change
    add_column :sightings, :address, :string
  end
end
