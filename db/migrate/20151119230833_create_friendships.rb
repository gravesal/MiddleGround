class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.integer :requester_id, null:false
      t.integer :acceptor_id, null:false
      t.integer :pending, default: 1

      t.timestamps null:false
    end
  end
end
