class AddUniqueConstraintToResponses < ActiveRecord::Migration
  def change
    add_index :responses, [:user_id, :choice_id], :unique => true
  end
end
