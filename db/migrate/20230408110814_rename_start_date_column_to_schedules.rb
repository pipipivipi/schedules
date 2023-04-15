class RenameStartDateColumnToSchedules < ActiveRecord::Migration[6.1]
  def change
    rename_column :schedules, :start_date, :startdate
    rename_column :schedules, :end_date, :enddate
  end
end
