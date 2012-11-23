class Finances < ActiveRecord::Migration
  def change
    create_table :finances do |t|
      t.references :user
      t.decimal :amount, :precision=>9, :scale=>2, :null=>false
      t.string :details
      t.timestamps
    end
  end
end
