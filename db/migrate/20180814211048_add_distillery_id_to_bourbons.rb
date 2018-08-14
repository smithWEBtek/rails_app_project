class AddDistilleryIdToBourbons < ActiveRecord::Migration[5.2]
  def change
    add_column :bourbons, :distillery_id, :integer
  end
end
