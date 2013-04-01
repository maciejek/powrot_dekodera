class CreateProjekts < ActiveRecord::Migration
  def change
    create_table :projekts, :id => false do |t|
      t.primary_key :idProjekt
      t.string :nazwa

      t.timestamps
    end
  end
end
