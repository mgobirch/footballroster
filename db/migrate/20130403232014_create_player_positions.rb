class CreatePlayerPositions < ActiveRecord::Migration
  def change
    create_table :player_positions do |t|
      t.string :position
      t.references :player
      t.datetime :started_at

      t.timestamps
    end
    add_index :player_positions, :player_id
  end
end
