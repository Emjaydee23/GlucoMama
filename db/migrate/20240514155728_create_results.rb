class CreateResults < ActiveRecord::Migration[7.1]
  def change
    create_table :results do |t|
      t.references :recording, null: false, foreign_key: true
      t.references :meal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
