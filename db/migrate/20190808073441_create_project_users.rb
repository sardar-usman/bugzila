class CreateProjectUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :project_users do |t|
      t.belongs_to :projects
      t.belongs_to :users
      t.timestamps
    end
  end
end
