class AddBountyChipsToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :bounty_chips, :integer
  end
end
