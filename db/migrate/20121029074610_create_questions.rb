class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :description
      t.datetime :expiration
      t.integer	:user_id
      t.timestamps
    end
  end
end
