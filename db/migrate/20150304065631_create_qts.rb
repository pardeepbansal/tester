class CreateQts < ActiveRecord::Migration
  def change
    create_table :qts do |t|
      t.integer :question_id
      t.integer :test_id

      t.timestamps null: false
    end
  end
end
