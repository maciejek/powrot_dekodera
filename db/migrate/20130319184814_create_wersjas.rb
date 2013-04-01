class CreateWersjas < ActiveRecord::Migration
  def change
    create_table :wersjas do |t|
      t.integer :plikID
      t.datetime :dataGodzina
      t.string :autor
      t.string :sciezka

      t.timestamps
    end
  end
end
