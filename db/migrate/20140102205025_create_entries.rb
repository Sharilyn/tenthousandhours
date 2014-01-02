class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :hours
      t.belongs_to :user, index: true
      t.belongs_to :skill, index: true
      t.text :note

      t.timestamps
    end
  end
end
