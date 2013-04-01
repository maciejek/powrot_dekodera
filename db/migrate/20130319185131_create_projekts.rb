class CreateProjekts < ActiveRecord::Migration
  def change
    create_table :projekts do |t|
      t.integer :idProjekt
      t.string :nazwa

      t.timestamps
    end
  end
end
