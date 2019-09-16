class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :project_users, :projects_id, :project_id
  end
end
