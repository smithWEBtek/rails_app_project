class BourbonSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :grain, :description
  belongs_to :distillery 
end
