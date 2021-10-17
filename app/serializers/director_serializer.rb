class DirectorSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :pickups
end
