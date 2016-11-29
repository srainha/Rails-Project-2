class AddDescriptionToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :description, :string
  end
end
