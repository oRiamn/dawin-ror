class ChangeAuthorIdType < ActiveRecord::Migration[5.0]
  def change
  	change_column :posts, :author, :integer
  end
end
