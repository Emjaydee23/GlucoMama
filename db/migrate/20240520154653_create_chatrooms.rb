class CreateChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :chatrooms do |t|
      t.string :title
      t.references :consultation, null: false, foreign_key: true
    end
  end
end
