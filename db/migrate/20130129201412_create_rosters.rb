class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.string :school
      t.integer :year

      t.timestamps
    end
  end
end
