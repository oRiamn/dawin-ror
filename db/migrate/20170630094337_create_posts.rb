class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.string :title
    	t.string :header
    	t.datetime :publishDate
    	t.string :picture
    	t.string :author
    end
  end
end
