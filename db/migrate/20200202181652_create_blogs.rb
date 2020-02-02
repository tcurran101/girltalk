class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.string :title
      t.string :subtitle
      t.string :author
      t.text :content
      t.timestamps
    end
    add_index :blogs, :user_id
  end
end
