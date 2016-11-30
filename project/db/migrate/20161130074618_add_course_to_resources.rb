class AddCourseToResources < ActiveRecord::Migration[5.0]
  def change
    add_column :resources, :course, :string
  end
end
