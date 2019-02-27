class Toymaker < ApplicationRecord
  has_many :toys
  has_many :users, through: :toys

  accepts_nested_attributes_for :toys

  validates :brand, :age, :kind, presence: true

  def opening_year
    "This company started in #{Time.now.year - self.age} year, and is #{self.age}  years old!"
  end
end
