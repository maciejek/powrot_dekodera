class CreateUdostepnianies < ActiveRecord::Migration
  def change
    create_table :udostepnianies do |t|
      t.string :user_email
      t.integer :plikID

      t.timestamps
    end
  end
end
