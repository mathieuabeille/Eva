class AddCommentsToSalons < ActiveRecord::Migration[5.1]
  def change
    add_column :salons, :comments, :text
  end
end
