class ToysUser < ApplicationRecord
  belongs_to :user
  belongs_to :toy

  # def self.toy_currently_rented?(toy, user)
    # ToysUser.where(toy_return_date: [nil, ''], toy_id: t2.id, user_id: u.id) != []
    # ToysUser.where(toy_return_date: [nil, ''], toy_id: t.id, user_id: u.id) != []
    # test_attrs = {
    #   toy_id: toy.id,
    #   user_id: user.id
    # }

    # test2_attrs = {
    #   toy_id: t2.id,
    #   user_id: u.id
    # # }
    # ToysUser.where(test_attrs)[0].toy_return_date == nil

    # where(toy_return_date: [nil, ''], toy_id: toy.id, user_id: user.id) != []
  # end


  # def self.past_toy_rentals(toy, user)
  #   foreign_keys = {toy_id: toy.id, user_id: user.id}
  #   result = where(foreign_keys).where.not(toy_return_date: [nil, ''])
  #   # binding.pry
  #   return result[0].toy_return_date if result != []
  # end 

  def self.user_past_rentals(user)
    where(user_id: user.id).where.not(toy_return_date: [nil, ''])
  end
end

# foreign_keys = {toy_id: t.id, user_id: u.id} # RockStar Sadie
# foreign_keys2 = {toy_id: t2.id, user_id: u.id} # bubbles
# result = ToysUser.where(foreign_keys).where.not(toy_return_date: [nil, ''])
