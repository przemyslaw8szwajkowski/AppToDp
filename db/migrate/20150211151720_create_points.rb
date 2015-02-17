class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :points
      t.references :user, index: true

      t.timestamps
    end
  end
end
