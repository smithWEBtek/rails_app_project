class BourbonStockist < ApplicationRecord
  belongs_to :bourbon
  belongs_to :stockist
end
