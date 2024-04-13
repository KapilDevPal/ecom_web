class CreateBlogs < ActiveRecord::Migration[7.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :blog_body
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
