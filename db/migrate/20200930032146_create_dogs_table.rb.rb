class CreateDogsTable < ActiveRecord::Migration[6.0]
    def change
      create_table :dogs do |table|
        table.string :breed
        table.integer :age
        table.string :name
        table.integer :weight
        table.string :size
        table.integer :life_expectancy
        table.string :sex
        table.integer :price
        table.timestamps
      end
    end
  end
  
