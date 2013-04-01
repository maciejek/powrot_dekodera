class CreateWiadomoscs < ActiveRecord::Migration
  def change
    create_table :wiadomoscs, :id => false do |t|
      t.primary_key :idWiadomosc
      t.string :odbiorca
      t.string :nadawca
      t.text :tresc
      t.datetime :dataGodzina

      t.timestamps
    end
  end
end
