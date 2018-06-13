class CreateSalons < ActiveRecord::Migration[5.1]
  def change
    create_table :salons do |t|
      t.string :first_name
      t.string :last_name
      t.string :salon
      t.string :phone
      t.string :email
      t.string :adress
      t.integer :postal_code

      t.timestamps
    end
  end
end
