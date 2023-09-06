class ChangeDateTimeToMissions < ActiveRecord::Migration[7.0]
  def change
    change_column :missions, :start_date, :date
    change_column :missions, :end_date, :date
  end
end
