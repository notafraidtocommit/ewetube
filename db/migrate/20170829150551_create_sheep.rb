class CreateSheep < ActiveRecord::Migration[5.1]
  def change
    
    create_table :sheep do |t|
      t.string :description
      t.string :status
      t.string :priority

      t.timestamps
    end
  end
end
