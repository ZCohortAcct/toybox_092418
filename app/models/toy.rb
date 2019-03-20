class Toy < ApplicationRecord
  belongs_to :toymaker

  validates :name, :size, :theme, presence: true

end
