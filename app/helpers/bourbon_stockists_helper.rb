module BourbonStockistsHelper

  def last_updated(bourbon_stockist)
    bourbon_stockist[:created_at].strftime('%F %T')
  end

end
