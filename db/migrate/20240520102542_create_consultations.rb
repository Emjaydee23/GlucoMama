class CreateConsultations < ActiveRecord::Migration[7.1]
  def change
    create_table :consultations do |t|
      t.integer :clinician_id, null: false
      t.integer :user_id, null: false

      t.timestamps
    end

    add_index :consultations, :clinician_id
    add_index :consultations, :user_id
    add_index :consultations, [:clinician_id, :user_id], unique: true
  end

end
