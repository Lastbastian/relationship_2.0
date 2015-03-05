class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.references :questionnaire, index: true

      t.timestamps null: false
    end
    add_foreign_key :questions, :questionnaires
  end
end
