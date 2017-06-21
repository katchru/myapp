class Aircrafts < ActiveRecord::Migration[5.1]
   def self.up
      
      create_table :aircrafts do |t|
         t.column :name, :string
      end
	
      Aircraft.create :name => "Baloon/Airplane/Rotorcraft"
      Aircraft.create :name => "Glider"
      Aircraft.create :name => "ULM/Trike"
    
   end

   def self.down
      drop_table :aircrafts
   end
end
