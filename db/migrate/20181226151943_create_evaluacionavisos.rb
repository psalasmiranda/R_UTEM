class CreateEvaluacionavisos < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluacionavisos do |t|
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :e
      t.string :f
      t.string :g
      t.string :h
      t.string :i
      t.string :j
      t.integer :k
      t.datetime :m

      t.timestamps
    end
  end
end
