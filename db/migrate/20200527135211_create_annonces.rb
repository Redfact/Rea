class CreateAnnonces < ActiveRecord::Migration[5.2]
  def change
    create_table :annonces do |t|
      t.string :lieu
      t.integer :capacite
      t.integer :loyer_total
      t.integer :loyer_partiel  
      t.integer :place_libre
      t.text :description
      t.boolean :contrat_partiel , default: :false
      t.timestamps
      t.integer :typeBien , default: 0
      t.integer :typeVente , default: 1
      t.boolean :AlaUne, default: false 
      t.integer :devise , default: 0 

      
    end
  end
end
