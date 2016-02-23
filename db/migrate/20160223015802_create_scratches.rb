class CreateScratches < ActiveRecord::Migration
  def change
    create_table :scratches do |t|
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
