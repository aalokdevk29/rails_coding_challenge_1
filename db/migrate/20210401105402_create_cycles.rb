class CreateCycles < ActiveRecord::Migration[5.1]
  def change
    create_table :cycles do |t|
      t.string :name
      t.jsonb :components_data

      t.timestamps
    end
  end
end
