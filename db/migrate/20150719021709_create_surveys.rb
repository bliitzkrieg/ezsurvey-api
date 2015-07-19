class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.boolean :password_protected
      t.boolean :unique_ip
      t.boolean :account_only

      t.timestamps null: false
    end
  end
end
