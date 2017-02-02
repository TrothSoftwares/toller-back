class CreateExamtimings < ActiveRecord::Migration[5.1]
  def change
    create_table :examtimings do |t|
      t.references :examscheduleset , index: true, foreign_key: true
      t.time :time
      t.string :file
      t.timestamps
    end
  end
end
