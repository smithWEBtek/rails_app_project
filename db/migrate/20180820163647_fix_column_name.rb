class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :bourbons, :year, :age
  end
end
