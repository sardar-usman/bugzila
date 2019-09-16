class ChangeProjectUserColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :project_users, :users_id, :user_id
  end
end
