class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :content
      t.references :survey, index: true

      t.timestamps null: false
    end
    add_foreign_key :answers, :surveys
  end
end
