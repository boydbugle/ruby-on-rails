class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.attachment :image
      t.text :content
      t.string :link

      t.timestamps
    end
  end
end
