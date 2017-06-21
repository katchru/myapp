class Registrations < ActiveRecord::Migration[5.1]
  def self.up
      create_table :registrations do |t|
         t.column :brand, :string
         t.column :model, :string
         t.column :aircraft_id, :integer
         t.column :engine, :text
		 t.column :owner_name, :text
		 t.column :owner_surname, :text
         t.column :created_at, :timestamp
      end
   end

   def self.down
      drop_table :registrations
   end
end
