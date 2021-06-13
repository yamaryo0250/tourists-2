class CreateTourings < ActiveRecord::Migration[6.0]
  def change
    create_table :tourings do |t|
      t.string :plan, null: false
      t.integer :displacement_id, null: false
      t.text :text, null: false
      t.integer :style_id, null: false
      t.integer :term_id, null: false
      t.integer :area_id, null: false
      t.date :day, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
