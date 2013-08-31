class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :title
      t.text :content
      t.references :user

      t.timestamps
    end
    add_index :practices, :user_id
  end
end
