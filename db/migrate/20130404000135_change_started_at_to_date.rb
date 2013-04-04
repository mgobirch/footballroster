class ChangeStartedAtToDate < ActiveRecord::Migration
  def change
    change_column :player_positions, :started_at, :date
  end
end
