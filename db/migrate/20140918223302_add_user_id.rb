class AddUserId < ActiveRecord::Migration
  def up
  add_column :questions, :user_id, :integer
  add_column :answers, :user_id, :integer
  end

  def down
  remove_column :answers, :user_id
  remove_column :questions, :user_id
  end
end
