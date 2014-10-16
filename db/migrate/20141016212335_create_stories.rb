class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.decimal :mass
      t.decimal :height
      t.decimal :result

      t.timestamps
    end
  end
end
