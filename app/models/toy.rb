class Toy < ApplicationRecord
  belongs_to :toymaker
  has_many :toys_user
  has_many :user, through: :toys_user

  validates :name, :size, :theme, presence: true

  def currently_rented?(user)
    # ToysUser.toy_currently_rented?(self, user)
    toys_user.where(toy_return_date: [nil, ''], user_id: user.id) != []
  end

  # find rental contract
  def contract(user)
    toys_user.find_by(user_id: user.id)
  end

  def past_rental_date(user)
    # ToysUser.past_toy_rentals(self, user)
    result = toys_user.where(user_id: user.id).where.not(toy_return_date: [nil, ''])
    return result[0].toy_return_date if result != []
  end

  # def self.find_past_rentals(arr)
  #   # arr.map {|obj| self.find(obj.toy_id)}
  #   # arr.map {|obj| obj.toy}
  #   arr.map(&:toy)
  # end
end
