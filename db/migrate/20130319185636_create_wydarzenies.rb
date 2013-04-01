class CreateWydarzenies < ActiveRecord::Migration
  def change
    create_table :wydarzenies, :id => false do |t|
      t.primary_key :idWydarzenie
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
