class ChangeCloumnsNotnullAddSchedules < ActiveRecord::Migration[6.1]
  def change
    change_column_null :schedules, :title, false
    change_column_null :schedules, :startdate, false
    change_column_null :schedules, :startdate, false
  end
end
