class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.datetime :entrylog
      t.text :situation
      t.text :autothoughtDesc
      t.text :autothoughtExp
      t.text :emotionsDesc
      t.text :emotionsRate
      t.text :adaptiveResp
      t.text :outcomes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
