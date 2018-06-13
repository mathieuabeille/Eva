class AddMessageToProspectts < ActiveRecord::Migration[5.1]
  def change
    add_column :prospectts, :message, :text
  end
end
