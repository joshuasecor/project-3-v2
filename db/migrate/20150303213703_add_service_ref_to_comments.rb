class AddServiceRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :service, index: true
    add_foreign_key :comments, :services
  end
end
