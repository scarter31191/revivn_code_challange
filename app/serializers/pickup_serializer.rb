class PickupSerializer < ActiveModel::Serializer
  attributes :id, :director_id, :submission, :location, :product, :status, :employee
  belongs_to :director
end
