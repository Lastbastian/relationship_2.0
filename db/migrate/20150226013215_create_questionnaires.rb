class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :questionnaires, :users
    add_index :questionnaires, [:user_id, :created_at]
  end
end
