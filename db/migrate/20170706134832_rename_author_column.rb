class RenameAuthorColumn < ActiveRecord::Migration[5.0]
  def change
  	rename_column :posts, :author, :user_id
  end
end
