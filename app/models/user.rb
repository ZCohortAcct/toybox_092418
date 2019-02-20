class User < ApplicationRecord
  has_many :toys
  has_many :toymakers, through: :toys
end
