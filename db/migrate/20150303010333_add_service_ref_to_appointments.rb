class AddServiceRefToAppointments < ActiveRecord::Migration
  def change
    add_reference :appointments, :service, index: true
    add_foreign_key :appointments, :services
  end
end
