class Toymaker < ApplicationRecord
  has_many :toys
  has_many :users, through: :toys

  accepts_nested_attributes_for :toys

  validates :brand, :age, :kind, presence: true

end
