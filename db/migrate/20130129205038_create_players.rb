class CreatePlayers < ActiveRecord::Migration
def change
    create_table :players do |t|
			t.references :roster      
			t.integer :number
			t.string :position
			t.string :height
			t.string :weight
			t.string :year_of_eligibility

      t.timestamps
    end
  end
end
