class CreateBourbonTable < ActiveRecord::Migration[5.2]
  def change
    create_table :bourbon do |t|
      t.string :name
      t.string :type
      t.integer :year
      t.string :description
    end
  end
end
