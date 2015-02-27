class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.string :first_name
      t.string :last_name
      t.text :bio
      t.boolean :is_featured

      t.timestamps null: false
    end
  end
end
