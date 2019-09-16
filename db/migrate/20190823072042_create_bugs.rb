class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.belongs_to  :project
      t.string      :title,            null: false, unique: true
      t.integer     :severity,         null: false
      t.text        :actual_result,    null: false
      t.text        :expected_result,  null: false
      t.string      :screen_shot
      t.integer     :status, null: false, default: 0
      t.timestamps
    end
  end
end
