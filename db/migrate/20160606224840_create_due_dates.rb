class CreateDueDates < ActiveRecord::Migration
  def change
    create_table :due_dates do |t|
      t.integer :month
      t.integer :day
      t.integer :year
      t.integer :sprint
      t.integer :hour
      t.integer :minute

      t.timestamps null: false
    end
  end
end
