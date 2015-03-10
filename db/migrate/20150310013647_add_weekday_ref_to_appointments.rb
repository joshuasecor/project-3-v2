class AddWeekdayRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :weekday, index: true
    add_foreign_key :appointments, :weekdays
  end
end
