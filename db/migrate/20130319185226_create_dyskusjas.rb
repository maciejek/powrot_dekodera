class CreateDyskusjas < ActiveRecord::Migration
  def change
    create_table :dyskusjas do |t|
      t.integer :idDyskusja
      t.string :user_email
      t.integer :projektID
      t.string :temat

      t.timestamps
    end
  end
end
