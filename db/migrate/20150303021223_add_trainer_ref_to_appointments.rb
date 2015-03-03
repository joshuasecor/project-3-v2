class AddTrainerRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :trainer, index: true
    add_foreign_key :appointments, :trainers
  end
end
