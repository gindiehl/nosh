class AddTimestampsToServices < ActiveRecord::Migration[5.1]
  def change
    add_column(:services, :timestamps, :datetime)
  end
end
