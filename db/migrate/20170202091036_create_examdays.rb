class CreateExamdays < ActiveRecord::Migration[5.1]
  def change
    create_table :examdays do |t|
      t.references :examscheduleset , index: true, foreign_key: true
      t.datetime :date
      t.timestamps
    end
  end
end
