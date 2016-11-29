class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.boolean :upcoming
      t.integer :user_id
      t.integer :location_id
      t.integer :course_id
      t.string :time

      t.timestamps
    end
  end
end
