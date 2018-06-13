class AddMessageToSalons < ActiveRecord::Migration[5.1]
  def change
    add_column :salons, :message, :text
  end
end
