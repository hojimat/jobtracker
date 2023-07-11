class CreateStages < ActiveRecord::Migration[7.0]
  def change
    create_table :stages do |t|
      t.references :bewerbung, null: false, foreign_key: true
      t.integer :name
      t.integer :status
      t.datetime :scheduled_at

      t.timestamps
    end
  end
end
