class CreateComponents < ActiveRecord::Migration[5.1]
  def change
    create_table :components do |t|
      t.string :name
      t.belongs_to :cycle, index: true, foreign_key: true
      t.bigint :parent_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
