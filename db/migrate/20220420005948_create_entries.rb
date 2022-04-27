class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.datetime :jentrylog
      t.boolean :gratitude
      t.text :jentry
      t.string :feeling
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
