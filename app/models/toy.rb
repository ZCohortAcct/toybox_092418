class Toy < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :toymaker
end
