class CreateWydarzenies < ActiveRecord::Migration
  def change
    create_table :wydarzenies do |t|
      t.integer :idWydarzenie
      t.string :user_email
      t.integer :projektID
      t.string :nazwa
      t.datetime :dataGodzina
      t.string :info
      t.boolean :publiczny

      t.timestamps
    end
  end
end
