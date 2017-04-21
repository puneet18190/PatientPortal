class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :attachment

      t.timestamps null: false
    end
  end
end
