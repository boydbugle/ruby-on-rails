class AddLatitudeAndLongitudeToSighting < ActiveRecord::Migration[5.0]
  def change
    add_column :sightings, :latitude, :float
    add_column :sightings, :longitude, :float
  end
end
