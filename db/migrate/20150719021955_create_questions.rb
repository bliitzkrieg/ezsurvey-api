class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.boolean :multiple_answers
      t.belongs_to :survey

      t.timestamps null: false
    end
  end
end
