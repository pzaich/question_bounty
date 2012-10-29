class CreateArguments < ActiveRecord::Migration
  def change
    create_table :arguments do |t|
      t.integer :question_id
      t.text :response
      t.integer :answer_id

      t.timestamps
    end
  end
end
