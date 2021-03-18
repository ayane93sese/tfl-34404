class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title, null:false
      t.date :date
      t.text :text
      t.integer :category_id, null:false
      t.integer :rank_id, null:false
      t.integer :status_id, null:false
      t.references :user, null:false, foreign_key:true
      t.timestamps
    end
  end
end



