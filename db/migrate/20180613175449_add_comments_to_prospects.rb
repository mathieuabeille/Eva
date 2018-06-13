class AddCommentsToProspects < ActiveRecord::Migration[5.1]
  def change
    add_column :prospects, :comments, :text
  end
end
