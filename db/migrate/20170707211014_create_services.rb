class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :price, :integer
      t.timestamps
    end
  end
end
