class AddTrainerRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :trainer, index: true
    add_foreign_key :comments, :trainers
  end
end
