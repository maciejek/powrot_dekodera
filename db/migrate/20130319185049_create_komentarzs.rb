class CreateKomentarzs < ActiveRecord::Migration
  def change
    create_table :komentarzs, :id => false do |t|
      t.primary_key :idKomentarz
      t.integer :plikID
      t.string :user_email
      t.string :tresc
      t.datetime :dataGodzina

      t.timestamps
    end
  end
end
