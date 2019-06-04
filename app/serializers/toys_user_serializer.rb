class ToysUserSerializer < ActiveModel::Serializer
  attributes :id, :toy_rent_date, :functional
  belongs_to :user
  belongs_to :toy
end
