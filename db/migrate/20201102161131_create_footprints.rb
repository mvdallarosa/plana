class CreateFootprints < ActiveRecord::Migration[6.0]
  def change
    create_table :footprints do |t|
      t.float :food
      t.float :mobility
      t.float :household

      t.timestamps
    end
  end
end
