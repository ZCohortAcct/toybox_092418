class Toy < ApplicationRecord
  belongs_to :user
  belongs_to :toymaker, optional: true
end
