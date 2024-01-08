# db/migrate/timestamp_create_join_table_user_role.rb

class CreateJoinTableUserRole < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :roles do |t|
      # additional columns, if any
      # t.index [:user_id, :role_id]
      # t.index [:role_id, :user_id]
    end
  end
end
