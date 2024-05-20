class CreateChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :chatrooms do |t|
      t.string :title
      t.integer :user1, null: false
      t.integer :user2, null: false


      t.timestamps
    end
    add_foreign_key :chatrooms, :users, column: :user1
    add_foreign_key :chatrooms, :users, column: :user2
    add_index :chatrooms, :user1
    add_index :chatrooms, :user2
  end
end
