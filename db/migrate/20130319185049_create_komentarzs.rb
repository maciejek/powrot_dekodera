class CreateKomentarzs < ActiveRecord::Migration
  def change
    create_table :komentarzs do |t|
      t.integer :idKomentarz
      t.integer :plikID
      t.string :user_email
      t.string :tresc
      t.datetime :dataGodzina

      t.timestamps
    end
  end
end
