class CreateBewerbungs < ActiveRecord::Migration[7.0]
  def change
    create_table :bewerbungs do |t|
      t.references :job_posting, null: false, foreign_key: true
      t.string :resume
      t.string :cover_letter
      t.string :files
      t.text :notes
      t.integer :status
      t.date :applied_at

      t.timestamps
    end
  end
end
