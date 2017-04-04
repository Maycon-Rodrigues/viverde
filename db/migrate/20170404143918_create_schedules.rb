class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.references :service, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime :schedu

      t.timestamps
    end
  end
end
