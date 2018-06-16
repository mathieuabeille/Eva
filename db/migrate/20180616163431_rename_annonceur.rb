class RenameAnnonceur < ActiveRecord::Migration[5.1]
  def self.up
    rename_table :annonceur, :annonceurs
  end

  def self.down
    rename_table :annonceurs, :annonceur
  end
end
