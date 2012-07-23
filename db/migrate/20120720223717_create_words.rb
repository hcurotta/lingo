class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :term
      t.text :def
      t.integer :vote
      t.boolean :flagged

      t.timestamps
    end
  end
end
