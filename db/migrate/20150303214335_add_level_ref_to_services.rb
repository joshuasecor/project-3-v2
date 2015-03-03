class AddLevelRefToServices < ActiveRecord::Migration
  def change
    add_reference :services, :level, index: true
    add_foreign_key :services, :levels
  end
end
