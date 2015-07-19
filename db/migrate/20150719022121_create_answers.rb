class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :selection
      t.string :ip
      t.string :country
      t.belongs_to :question

      t.timestamps null: false
    end
  end
end