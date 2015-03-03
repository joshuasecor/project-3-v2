class AddCategoryRefToServices < ActiveRecord::Migration
  def change
    add_reference :services, :category, index: true
    add_foreign_key :services, :categories
  end
end
