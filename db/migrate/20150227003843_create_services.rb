class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.boolean :is_featured

      t.timestamps null: false
    end
  end
end
