class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :idPost
      t.integer :dyskusjaID
      t.string :autor
      t.text :tresc
      t.datetime :dataGodzina

      t.timestamps
    end
  end
end
