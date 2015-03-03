class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :title
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :e
      t.string :answer

      t.timestamps null: false
    end
  end
end
