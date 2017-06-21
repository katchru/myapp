class CreateCombinations < ActiveRecord::Migration[5.1]
  def change
    create_table :combinations do |t|

      t.timestamps
    end
  end
end
