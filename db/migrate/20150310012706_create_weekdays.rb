class CreateWeekdays < ActiveRecord::Migration
  def change
    create_table :weekdays do |t|
      t.string :name
      t.integer :dow

      t.timestamps null: false
    end
  end
end
