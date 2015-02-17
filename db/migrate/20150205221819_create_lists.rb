class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.boolean :status
      t.date :date_end

      t.timestamps
    end
  end
end
