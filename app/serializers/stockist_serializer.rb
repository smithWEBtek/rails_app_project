class StockistSerializer < ActiveModel::Serializer
  attributes :id, :name, :address
  has_many :bourbons
end
