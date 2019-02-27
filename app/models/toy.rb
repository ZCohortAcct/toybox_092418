class Toy < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :toymaker, optional: true

  validates :name, :size, :theme, presence: true

end
