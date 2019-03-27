class CreateToysUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :toys_users do |t|
      t.datetime :toy_rent_date
      t.datetime :toy_return_date
      t.boolean :functional, default: true
      t.references :user, foreign_key: true
      t.references :toy, foreign_key: true

      t.timestamps
    end
  end
end
