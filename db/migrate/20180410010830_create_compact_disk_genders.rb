class CreateCompactDiskGenders < ActiveRecord::Migration[5.1]
  def change
    create_table :compact_disk_genders do |t|
      t.references :compact_disk, foreign_key: true
      t.references :gender, foreign_key: true

      t.timestamps
    end
  end
end
