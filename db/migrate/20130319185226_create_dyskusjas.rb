class CreateDyskusjas < ActiveRecord::Migration
  def change
    create_table :dyskusjas, :id => false do |t|
      t.primary_key :idDyskusja
      t.string :user_email
      t.integer :projektID
      t.string :temat

      t.timestamps
    end
  end
end
