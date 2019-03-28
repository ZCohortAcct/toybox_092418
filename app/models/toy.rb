class Toy < ApplicationRecord
  belongs_to :toymaker
  has_many :toys_user
  has_many :user, through: :toys_user
  
  validates :name, :size, :theme, presence: true

  def currently_rented?(user)
    t.toys_user.find_by(user_id: user.id)
    # ToysUser.toy_currently_rented?(self, user)
  end

  def past_rental_date(user)
    ToysUser.past_toy_rentals(self, user)
  end

  # def self.find_past_rentals(arr)
  #   # arr.map {|obj| self.find(obj.toy_id)}
  #   # arr.map {|obj| obj.toy}
  #   arr.map(&:toy)
  # end
end
