class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.text :description
      t.string :category
      t.integer :duration
      t.text :information
      t.float :impact

      t.timestamps
    end
  end
end
