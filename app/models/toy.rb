class Toy < ApplicationRecord
  belongs_to :toymaker
  has_many :toys_user
  has_many :user, through: :toys_user
  
  validates :name, :size, :theme, presence: true

end
