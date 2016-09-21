class CreateConsumption < ActiveRecord::Migration[5.0]
  def change
    create_table :consumptions do |t|
      t.column :meal, :string
      t.column :user_id, :integer
      t.column :servings, :integer
      t.column :calories, :integer
      t.column :food_id, :integer

      t.timestamps
    end

    create_table :foods do |t|
      t.column :name, :string
      t.column :calories_per_serving, :integer
      t.column :serving_size, :string
    end
  end
end
