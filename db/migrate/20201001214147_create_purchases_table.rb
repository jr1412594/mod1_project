class CreatePurchasesTable < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.references :dog
      t.references :product
      t.timestamps
    end
  end
end
