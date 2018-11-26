class BourbonSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :grain, :description
  belongs_to :distillery
  has_many :stockists
end
