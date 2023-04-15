class ChangeColumnNotnull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :schedules, :enddate, false
  end
end
