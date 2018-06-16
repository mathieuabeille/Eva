class RenameProspectts < ActiveRecord::Migration[5.1]

  def self.up
    rename_table :prospectts, :annonceur
  end

  def self.down
    rename_table :annonceur, :prospectts
  end

end
