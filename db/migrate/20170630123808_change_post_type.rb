class ChangePostType < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :header, :text
  end
end
