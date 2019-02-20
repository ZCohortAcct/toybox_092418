class CreateToymakers < ActiveRecord::Migration[5.2]
  def change
    create_table :toymakers do |t|
      t.string :brand
      t.string :kind
      t.integer :age

      t.timestamps
    end
  end
end
