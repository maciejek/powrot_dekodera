class CreateWiadomoscs < ActiveRecord::Migration
  def change
    create_table :wiadomoscs do |t|
      t.integer :idWiadomosc
      t.string :odbiorca
      t.string :nadawca
      t.text :tresc
      t.datetime :dataGodzina

      t.timestamps
    end
  end
end
