class CreateAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :animals do |t|
      t.column :species, :string
      t.column :number, :int
      t.column :description, :string
      t.column :sighting_id, :int

      t.timestamps
    end
  end
end
