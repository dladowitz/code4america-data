class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
      t.integer :inspection_id
      t.string :category
      t.date :violation_date
      t.date :violation_closed_date
      t.string :type

      t.timestamps null: false
    end
  end
end
