class CreateBuiers < ActiveRecord::Migration[5.1]
  def change
    create_table :buiers do |t|
      t.text :name

      t.timestamps
    end
  end
end
