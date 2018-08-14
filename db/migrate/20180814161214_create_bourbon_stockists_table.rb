class CreateBourbonStockistsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bourbon_stockists do |t|
      t.text :notes
      
      t.belongs_to :bourbon
      t.belongs_to :stockist

    end
  end
end
