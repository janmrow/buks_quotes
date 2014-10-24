class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.text :content, null: false

      t.references :user
      t.timestamps
    end
  end
end
