class AddToymakerReferencesToToys < ActiveRecord::Migration[5.2]
  def change
    add_reference :toys, :toymaker, foreign_key: true
  end
end
