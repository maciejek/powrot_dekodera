class CreateUzytkowniks < ActiveRecord::Migration
  def change
    create_table :uzytkowniks do |t|
      t.string :nazwisko
      t.string :imie
      t.date :dataUr
      t.string :haslo
      t.boolean :administrator

      t.timestamps
    end
	
  end
end
