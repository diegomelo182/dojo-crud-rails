class CreateCompactDisks < ActiveRecord::Migration[5.1]
  def change
    create_table :compact_disks do |t|
      t.text :name
      t.integer :year

      t.timestamps
    end
  end
end
