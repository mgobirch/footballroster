class CreateEligibleYears < ActiveRecord::Migration
  def change
    create_table :eligible_years do |t|
      t.integer :year
      t.string :status
      t.string :status_explanation
      t.string :transfer_school
			t.references :roster
			t.references :player

      t.timestamps
    end
  end
end
