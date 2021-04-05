class CreateImpects < ActiveRecord::Migration[5.1]
  def change
    create_table :impects do |t|
      t.integer :climate_change
      t.integer :water_use
      t.belongs_to :component, index: true, foreign_key: true

      t.timestamps
    end
  end
end
