class AddPointToList < ActiveRecord::Migration
  def change
    add_column :lists, :point, :integer
  end
end
