class Toy < ApplicationRecord
  belongs_to :toymaker
  has_many :toys_user
  has_many :user, through: :toys_user
  
  validates :name, :size, :theme, presence: true

  def currently_rented?(user)
    ToysUser.toy_currently_rented?(self, user)
  end

  def past_rental_date(user)
    ToysUser.past_toy_rentals(self, user)
  end
end
