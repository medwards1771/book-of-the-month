class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.text :fullname
      t.timestamps
    end

    add_index :authors, [:fullname], unique: true
  end
end
