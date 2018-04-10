class CreateSells < ActiveRecord::Migration[5.1]
  def change
    create_table :sells do |t|
      t.references :buier, foreign_key: true
      t.references :compact_disk, foreign_key: true

      t.timestamps
    end
  end
end
