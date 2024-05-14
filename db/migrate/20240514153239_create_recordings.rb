class CreateRecordings < ActiveRecord::Migration[7.1]
  def change
    create_table :recordings do |t|
      t.float :reading
      t.date :date
      t.time :time
      t.string :ingredients
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
