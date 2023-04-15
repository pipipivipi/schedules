class RenameStartDayColumnToSchedules < ActiveRecord::Migration[6.1]
  def change
    rename_column :schedules, :start_day, :start_date
  end
end
