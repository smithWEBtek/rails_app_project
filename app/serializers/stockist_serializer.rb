class StockistSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :bourbons 
end
