class CreateTimings < ActiveRecord::Migration[5.1]
  def change
    create_table :timings do |t|
      t.time :time
      t.string :file
      t.references :scheduleset , index: true, foreign_key: true
      t.timestamps
    end
  end
end
