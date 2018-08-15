class ChangeColumnName < ActiveRecord::Migration[5.2]

    def change
    rename_column :bourbons, :type, :grain
  end

end
