class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer  :points ,default: 0, null: false
      t.references :user, index: true

      t.timestamps
    end
  end
end
