class CreateSightings < ActiveRecord::Migration[5.0]
  def change
    create_table :sightings do |t|
      t.column :region, :string
      t.column :warden, :string
      t.column :zone, :string

      t.timestamps
    end
  end
end
