class CreateBourbons < ActiveRecord::Migration[5.2]
  def change
    create_table :bourbons do |t|
      t.string :name
      t.string :type
      t.integer :year
      t.string :description
    end
  end
end
