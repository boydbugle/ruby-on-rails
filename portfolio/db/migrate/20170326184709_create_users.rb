class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
