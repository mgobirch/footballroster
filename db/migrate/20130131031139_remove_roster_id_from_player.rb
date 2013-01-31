class RemoveRosterIdFromPlayer < ActiveRecord::Migration
  def up
		remove_column :players, :roster_id
  end

  def down
		add_column :players, :roster_id, :integer
  end
end
