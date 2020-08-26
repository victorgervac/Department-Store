class RemoveItemsFromDepartments < ActiveRecord::Migration[6.0]
  def change
    remove_column :departments, :item, :string
  end
end
