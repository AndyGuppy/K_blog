class CreateBlogLinks < ActiveRecord::Migration
  def change
    create_table :blog_links do |t|
      t.string :url
      t.text :quote
      t.text :comment

      t.timestamps null: false
    end
  end
end
