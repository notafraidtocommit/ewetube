class CreateSheep < ActiveRecord::Migration[5.1]
  def change
    
    
    create_table :sheep do |t|
      t.string :name
      t.string :personality

      t.timestamps
    end
  end
end
